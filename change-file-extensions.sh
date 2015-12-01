# converts file extensions recursively, in this case .jsx -> .js

for i in $(find `pwd` -name "*.jsx"); 
do 
    mv "$i" "${i%.jsx}.js"
done
