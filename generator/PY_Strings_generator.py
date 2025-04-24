# To run the file
# python3 PY_Strings_generator.py --project-dir ./path_to_flutter_project --json-file ./app_strings.json --dart-file ./lib/app_strings.dart

import os
import re
import json
import argparse
import inflect

# Regular expression to find Text widget with a plain string
text_pattern = re.compile(r'Text\(\s*["\'](.*?)["\']')

# Create an inflect engine to convert strings into meaningful keys
inflector = inflect.engine()

# Dictionary to store collected strings
strings_dict = {}

# Convert string to a meaningful key
def generate_key(string_value):
    # Remove non-alphanumeric characters and convert to lowercase
    key = re.sub(r'\W+', '_', string_value.strip().lower())
    
    # Limit the length of the key to a reasonable size (optional, can be customized)
    key = key[:50]
    
    # Ensure the key is unique by checking against the existing keys
    base_key = key
    counter = 1
    while key in strings_dict:
        key = f"{base_key}_{counter}"
        counter += 1

    return key

# Convert a key into camelCase for Dart property names
def to_camel_case(snake_str):
    components = snake_str.split('_')
    return components[0] + ''.join(x.title() for x in components[1:])

# Collect strings and replace them in the file
def collect_and_replace_strings(file_path):
    modified_content = ''
    replacements = []

    with open(file_path, 'r', encoding='utf-8') as file:
        content = file.read()
        matches = re.findall(text_pattern, content)
        
        for match in matches:
            # Generate a unique key
            key = generate_key(match)
            
            # Add the key-value pair to the dictionary
            strings_dict[key] = match
            
            # Prepare the replacement (AppStrings.camelCaseKey)
            camel_case_key = to_camel_case(key)
            replacement = f"AppStrings.{camel_case_key}"
            
            # Add the replacement instruction for later processing
            replacements.append((match, replacement))
    
    # Apply all the replacements in the file content
    modified_content = content
    for original, replacement in replacements:
        modified_content = modified_content.replace(f"Text('{original}')", f"Text({replacement})")
        modified_content = modified_content.replace(f'Text("{original}")', f'Text({replacement})')

    # Write the modified content back to the original file
    with open(file_path, 'w', encoding='utf-8') as file:
        file.write(modified_content)

# Append new strings to an existing JSON file
def append_to_json_file(json_file_path):
    try:
        # Load the existing JSON file if it exists
        with open(json_file_path, 'r', encoding='utf-8') as json_file:
            existing_data = json.load(json_file)
    except FileNotFoundError:
        # If the file doesn't exist, start with an empty dictionary
        existing_data = {}

    # Update the existing data with new findings
    existing_data.update(strings_dict)

    # Write back to the JSON file
    with open(json_file_path, 'w', encoding='utf-8') as json_file:
        json.dump(existing_data, json_file, indent=4, ensure_ascii=False)

# Write the keys and values to a Dart file
def write_to_dart_file(dart_file_path):
    with open(dart_file_path, 'w', encoding='utf-8') as dart_file:
        dart_file.write('class AppStrings {\n')
        
        for key in strings_dict:
            camel_case_key = to_camel_case(key)
            dart_file.write(f'  static const String {camel_case_key} = "{key}";\n')

        dart_file.write('}\n')

# Traverse the project directory to gather strings from all .dart files
def gather_and_replace_strings(project_dir):
    for subdir, dirs, files in os.walk(project_dir):
        for file in files:
            if file.endswith(".dart"):
                file_path = os.path.join(subdir, file)
                collect_and_replace_strings(file_path)

if __name__ == "__main__":
    # Parse command-line arguments
    parser = argparse.ArgumentParser(description='Extract and replace strings from Flutter project, append to JSON, and generate Dart constants.')
    parser.add_argument('--project-dir', required=True, help='Path to the Flutter project directory')
    parser.add_argument('--json-file', required=True, help='Path to the JSON file to append strings to')
    parser.add_argument('--dart-file', required=True, help='Path to the Dart file to write string constants to')
    
    args = parser.parse_args()

    # Step 1: Gather strings from the Flutter project and replace them with AppStrings keys
    gather_and_replace_strings(args.project_dir)
    
    # Step 2: Append new strings to the existing JSON file
    append_to_json_file(args.json_file)
    
    # Step 3: Write string constants to the Dart file
    write_to_dart_file(args.dart_file)
    
    print(f"Strings have been collected, replaced in code, and saved to {args.json_file}")
    print(f"String constants have been written to {args.dart_file}")