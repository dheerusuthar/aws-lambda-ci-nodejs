#!/bin/bash
echo ========================================== Start Build ================================================
set -e
set -x
rm -rf src eslint-result.xml;
mkdir src; 
curr_dir=$(pwd);
cd lambda-functions;

npm install -g eslint;
eslint --config=../.eslintrc */index.js --fix > ../eslint-result.xml;

for d in ./*; do
    cd ${d};
    CURRENT=`pwd`;
    BASENAME=`basename "$CURRENT"`;
    echo "[Running Build On] -> $BASENAME";
    npm install;
    npm test;
    npm run build;
    if [ `uname` == "MINGW64_NT-10.0" ]; then
        npm run win-zip;
    else
        npm run zip;
    fi 
    cp ./dist/package.zip "${curr_dir}/src/${BASENAME}.zip";
    cd ..;
done

echo ========================================== End Build ================================================