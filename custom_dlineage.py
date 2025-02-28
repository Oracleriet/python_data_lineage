import os
import webbrowser
import jpype
import sys

def get_file_character_count(file_path):
    character_count = 0
    with open(file_path, "r") as file:
        try:
            content = file.read()
            character_count = len(content)
        except:
            print(file_path + " is not a text file.")
    return character_count

def get_all_files(folder_path):
    all_files = []
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            file_path = os.path.join(root, file)
            all_files.append(file_path)
    return all_files

def get_text_files_character_count(folder_path):
    text_files = get_all_files(folder_path)
    total_character_count = 0
    for file_path in text_files:
        character_count = get_file_character_count(file_path)
        total_character_count += character_count
    return total_character_count

def indexOf(args, arg):
    try:
        return args.index(arg)
    except:
        return -1

def save_to_file(file_name, contents):
    with open(file_name, 'w') as fh:
        fh.write(contents)

def call_dataFlowAnalyzer(args):
    # Start the Java Virtual Machine (JVM)
    widget_server_url = "http://localhost:8000"
    jvm = jpype.getDefaultJVMPath()
    jar = "-Djava.class.path=jar/gudusoft.gsqlparser-2.8.5.8.jar"
    jpype.startJVM(jvm, "-ea", jar)

    try:
        TGSqlParser = jpype.JClass("gudusoft.gsqlparser.TGSqlParser")
        DataFlowAnalyzer = jpype.JClass("gudusoft.gsqlparser.dlineage.DataFlowAnalyzer")
        ProcessUtility = jpype.JClass("gudusoft.gsqlparser.dlineage.util.ProcessUtility")
        JSON = jpype.JClass("gudusoft.gsqlparser.util.json.JSON")
        XML2Model = jpype.JClass("gudusoft.gsqlparser.dlineage.util.XML2Model")
        RemoveDataflowFunction = jpype.JClass("gudusoft.gsqlparser.dlineage.util.RemoveDataflowFunction")
        File = jpype.JClass("java.io.File")
        EDbVendor = jpype.JClass("gudusoft.gsqlparser.EDbVendor")
        vendor = EDbVendor.dbvoracle
        index = indexOf(args, "/t")
        if index != -1 and len(args) > index + 1:
            vendor = TGSqlParser.getDBVendorByName(args[index + 1])
        if indexOf(args, "/version") != -1:
            print("Version: " + DataFlowAnalyzer.getVersion())
            print("Release Date: " + DataFlowAnalyzer.getReleaseDate())
            return

        # Determine output file prefix from /o or use default
        output_index = indexOf(args, "/o")
        output_prefix = ""
        if output_index != -1 and len(args) > output_index + 1:
            output_prefix = args[output_index + 1]

        # Construct filenames based on the prefix
        output_file_er_graph = f"widget/json/erGraph_{output_prefix}.json" if output_prefix else "widget/json/erGraph.json"
        output_file_lineage_graph = f"widget/json/lineageGraph_{output_prefix}.json" if output_prefix else "widget/json/lineageGraph.json"

        # SQL file or directory processing
        if indexOf(args, "/f") != -1 and len(args) > indexOf(args, "/f") + 1:
            sqlFiles = File(args[indexOf(args, "/f") + 1])
            if not sqlFiles.exists() or not sqlFiles.isFile():
                print(args[indexOf(args, "/f") + 1] + " is not a valid file.")
                return
            character_count = get_file_character_count(args[indexOf(args, "/f") + 1])
            if character_count > 200000:
                print("SQLFlow lite version only supports processing SQL statements with a maximum of 100,000 characters.")
                return

        elif indexOf(args, "/d") != -1 and len(args) > indexOf(args, "/d") + 1:
            sqlFiles = File(args[indexOf(args, "/d") + 1])
            if not sqlFiles.exists() or not sqlFiles.isDirectory():
                print(args[indexOf(args, "/d") + 1] + " is not a valid directory.")
                return
            character_count = get_text_files_character_count(args[indexOf(args, "/d") + 1])
            if character_count > 200000:
                print("SQLFlow lite version only supports processing SQL statements with a maximum of 100,000 characters.")
                return
        else:
            print("Please specify a sql file path or directory path to analyze dlineage.")
            return

        # Configuration for lineage
        simple = indexOf(args, "/s") != -1
        jsonFormat = indexOf(args, "/json") != -1

        dlineage = DataFlowAnalyzer(sqlFiles, vendor, simple)
        dlineage.generateDataFlow()
        dataflow = dlineage.getDataFlow()

        # Process ER Graph if specified
        if indexOf(args, "/er") != -1:
            DataFlowGraphGenerator = jpype.JClass("gudusoft.gsqlparser.dlineage.graph.DataFlowGraphGenerator")
            generator = DataFlowGraphGenerator()
            result = generator.genERGraph(vendor, dataflow)
            save_to_file(output_file_er_graph, str(result))
            webbrowser.open_new(widget_server_url + "/er.html")
            return

        # Process Lineage Graph if specified
        if indexOf(args, "/graph") != -1:
            DataFlowGraphGenerator = jpype.JClass("gudusoft.gsqlparser.dlineage.graph.DataFlowGraphGenerator")
            generator = DataFlowGraphGenerator()
            result = generator.genDlineageGraph(vendor, False, dataflow)
            save_to_file(output_file_lineage_graph, str(result))
            webbrowser.open_new(widget_server_url)

        errors = dlineage.getErrorMessages()
        if not errors.isEmpty():
            print("Error log:\n")
        for err in errors:
            print(err.getErrorMessage())

    finally:
        jpype.shutdownJVM()


if __name__ == "__main__":
    args = sys.argv
    if len(args) < 2:
        print("Usage: java DataFlowAnalyzer ... (see full help documentation)")
        sys.exit(0)

    call_dataFlowAnalyzer(args)