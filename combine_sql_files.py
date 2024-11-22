import os

def combine_and_replace_sql_files_recursive(input_folder, output_file, search_text, replace_text):
    """
    Kombinerer alle SQL-filer fra en mappe og dens under-mapper til én samlet fil
    og udfører en søg og erstat operation.
    
    :param input_folder: Stien til rod-mappen, der indeholder SQL-filerne.
    :param output_file: Navnet på den samlede SQL-fil.
    :param search_text: Tekst, der skal søges efter.
    :param replace_text: Tekst, der skal erstatte den fundne tekst.
    """
    try:
        # Find alle SQL-filer rekursivt
        sql_files = []
        for root, dirs, files in os.walk(input_folder):
            for file in files:
                if file.endswith('.sql'):
                    sql_files.append(os.path.join(root, file))
        
        if not sql_files:
            print("Ingen SQL-filer fundet i mappen og dens under-mapper.")
            return

        print(f"Følgende SQL-filer blev fundet: {sql_files}")
        
        # Kombiner og erstat tekst i filerne
        with open(output_file, 'w') as output:
            for sql_file in sql_files:
                with open(sql_file, 'r') as file:
                    sql_content = file.read()

                    # Udfør søg og erstat
                    updated_content = sql_content.replace(search_text, replace_text)

                    # Skriv til outputfil
                    relative_path = os.path.relpath(sql_file, input_folder)
                    output.write(f"-- Start af {relative_path} --\n")
                    output.write(updated_content)
                    output.write(f"\n-- Slut af {relative_path} --\n\n")
        
        print(f"SQL-filerne er kombineret og gemt i: {output_file}")
    
    except Exception as e:
        print(f"Der opstod en fejl: {e}")


def count_characters_in_file(file_path):
    """
    Tæller antallet af karakterer i en fil.
    
    :param file_path: Stien til filen, der skal analyseres.
    :return: Antallet af karakterer i filen.
    """
    try:
        with open(file_path, 'r') as file:
            content = file.read()
            return len(content)
    except FileNotFoundError:
        print(f"Filen '{file_path}' blev ikke fundet.")
        return 0


# Eksempel på brug
if __name__ == "__main__":
    # Rodmappen med dine SQL-filer
    input_folder = "sql"  # Skift dette til den relevante mappe
    
    # Navnet på den kombinerede fil
    output_file = "combined.sql"

    # Tekst til søg og erstat
    search_text = "CREATE OR REPLACE EDITIONABLE VIEW"
    replace_text = "CREATE OR REPLACE VIEW"
    
    # Kombiner SQL-filer og udfør søg og erstat
    combine_and_replace_sql_files_recursive(input_folder, output_file, search_text, replace_text)
    
    # Tæl antal karakterer i den kombinerede fil
    character_count = count_characters_in_file(output_file)
    print(f"Den samlede fil '{output_file}' indeholder {character_count} karakterer.")
