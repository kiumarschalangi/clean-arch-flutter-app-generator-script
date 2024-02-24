#!/bin/bash
#This is a script used to create a flutter app 
#with clean architecture template


# Function to check if a string is camel case
is_camel_case() {
  [[ "$1" =~ ^[A-Z][a-z0-9]*(?:[A-Z][a-z0-9]*)*$ ]]
}

# Function to check if a string is snake case
is_snake_case() {
  [[ "$1" =~ ^[a-z0-9_]+$ ]]
}

# Get app name from user
echo "welcome to flutter clean arch app creator"
sleep 1 
read -p "Enter the name of your flutter app: " app_name

# Check if app name is empty
if [[ -z "$app_name" ]]; then
  echo "Error: App name cannot be empty."
  exit 1
fi

# Check if app name is camel case or snake case
if ! is_camel_case "$app_name" && ! is_snake_case "$app_name"; then
  echo "Error: App name must be either camel case (e.g., MyApp) or snake case (e.g., my_app)."
  exit 1
fi
sleep 1
# Ask if user wants empty or full app
read -p "Do you want to create an empty Flutter app (y/N)? " answer

# Create empty app if answer is yes (y) and exit
if [[ "$answer" =~ ^[Yy]$ ]]; then
  flutter create -e "$app_name" && echo "Empty Flutter app created successfully!"
  
# Otherwise, create app with default counter app code
else
  flutter create "$app_name" && echo "Flutter app created successfully!"
fi

# Navigate to project directory
cd $app_name

# Create sample_module folder

mkdir lib/sample_module
mkdir lib/app

#create folders within app

mkdir lib/app/{constants,di,extensions,core}

# Create folders within sample_module

mkdir lib/sample_module/{presentation,data,domain}
mkdir lib/sample_module/data/{dto,mapper,repository_impl,service,source}
mkdir lib/sample_module/domain/{entity,repository,use_case}
mkdir lib/sample_module/presentation/{bloc,view}
mkdir lib/sample_module/presentation/view/{page,components}

# Create sample_module_endpoints.dart
touch lib/sample_module/data/service/sample_module_endpoints.dart
echo "//const String sampleEndpoint = '';" >> lib/sample_module/data/service/sample_module_endpoints.dart

# Create sample_module_mapper.dart
touch lib/sample_module/data/mapper/sample_module_mapper.dart
echo "// extension SampleModuleMapper on SampleDto {" >> lib/sample_module/data/mapper/sample_module_mapper.dart
echo "//   SampleEntity mapToEntity() {" >> lib/sample_module/data/mapper/sample_module_mapper.dart
echo "//     return SampleEntity(" >> lib/sample_module/data/mapper/sample_module_mapper.dart
echo "//       test1: test1," >> lib/sample_module/data/mapper/sample_module_mapper.dart
echo "//       test2: test2," >> lib/sample_module/data/mapper/sample_module_mapper.dart
echo "//     );" >> lib/sample_module/data/mapper/sample_module_mapper.dart
echo "//}" >> lib/sample_module/data/mapper/sample_module_mapper.dart

# Create sample_module_remote_data_source.dart and sample_module_local_data_source.dart
touch lib/sample_module/data/source/sample_module_remote_data_source.dart
touch lib/sample_module/data/source/sample_module_local_data_source.dart
echo "*********************************************************************"
echo "**Finished creating $app_name with Clean Architecture successfully!**"
echo "*********************************************************************"

# written by kiumars chaharlangi
# https://github.com/kiumarschalangi
# https://www.linkedin.com/in/kiumars-chaharlangi