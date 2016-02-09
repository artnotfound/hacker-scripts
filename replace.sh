#!/usr/bin/env bash
# string replaces recursively in files, in this case .jsx - > .js 

find ./lib -name "*.jsx" -exec bash -c 'mv "$1" "$(sed "s/\.jsx$/.js/" <<< "$1")"' - '{}' \; 
