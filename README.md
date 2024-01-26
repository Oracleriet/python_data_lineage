# python_data_lineage
Data lineage tools in python

## step 1 环境准备
  * 安装python3
  * 安装 java jdk1.8

## step 2 打开web服务
 切换到本项目widget目录，执行以下命令启动web服务：

 `python -m http.server 8000`
  
  浏览器内打开以下网址验证是否启动成功：http://localhost:8000/
  
  注意：如果要修改8000端口，需要同时在dlineage.py里修改widget_server_url

## step 3 执行python脚本
  切换到本项目根目录，即dlineage.py所在目录，执行以下命令：

  `python dlineage.py /f test.sql /graph`
   
   此命令，会将test.sql进行血缘分析，并打开一个浏览器页面，图形化方式展示血缘分析结果。
   
   dlineage.py 支持的命令参数说明：

      /f: Optional, the full path to SQL file.

      /d: Optional, the full path to the directory includes the SQL files.

      /j: Optional, return the result including the join relation.

      /s: Optional, simple output, ignore the intermediate results.

      /topselectlist: Optional, simple output with top select results.

      /withTemporaryTable: Optional, simple output with the temporary tables.

      /i: Optional, the same as /s option, but will keep the resultset generated by the SQL function, this parameter will have the same effect as /s /topselectlist + keep resultset generated by the sql function.

      /showResultSetTypes: Optional, simple output with specify resultset types, separate with commas, resultset types contains array, struct, result_of, cte, insert_select, update_select, merge_update, merge_insert, output, update_set pivot_table, unpivot_table, alias, rs, function, case_when

      /if: Optional, keep all the intermediate resultset, but remove the resultset generated by the SQL function

      /ic: Optional, ignore the coordinates in the output.

      /lof: Option, link orphan column to the first table.

      /traceView: Optional, only output the name of source tables and views, ignore all intermedidate data.

      /text: Optional, this option is valid only /s is used, output the column dependency in text mode.

      /json: Optional, print the json format output.

      /tableLineage [/csv /delimiter]: Optional, output tabel level lineage.

      /csv: Optional, output column level lineage in csv format.

      /delimiter: Optional, the delimiter of output column level lineage in csv format.

      /t: Option, set the database type. 
        Support access,bigquery,couchbase,dax,db2,greenplum,hana,hive,impala,informix,mdx,mssql,
        sqlserver,mysql,netezza,odbc,openedge,oracle,postgresql,postgres,redshift,snowflake,
        sybase,teradata,soql,vertica the default value is oracle

      /env: Optional, specify a metadata.json to get the database metadata information.

      /transform: Optional, output the relation transform code.

      /coor: Optional, output the relation transform coordinate, but not the code.

      /defaultDatabase: Optional, specify the default schema.

      /defaultSchema: Optional, specify the default schema.

      /showImplicitSchema: Optional, show implicit schema.

      /showConstant: Optional, show constant table.

      /treatArgumentsInCountFunctionAsDirectDataflow: Optional, treat arguments in count function as direct dataflow.

      /filterRelationTypes: Optional, support fdd, fdr, join, call, er, multiple relatoin types separated by commas

      /graph 打开一个浏览器页面，图形化方式展示血缘分析结果