#!/bin/bash
echo ========================================== Start Build ================================================
set -e
set -x
rm -rf src eslint-result.xml;
mkdir src; 
curr_dir=$(pwd);
cd lambda-functions;

npm install -g eslint;
eslint --config=../.eslintrc */*/index.js --fix > ../eslint-result.xml;

for d in ./*; do
    cd ${d};
    CURRENT=`pwd`;
    BASENAME=`basename "$CURRENT"`;
    echo "[Running Build On] -> $BASENAME";
    npm install;
    npm test;
    npm run build;
    # npm run win-zip;
    npm run zip;
    cp ./dist/${BASENAME}.zip "${curr_dir}/src/${d%}.zip";
    cd ..;
done

echo ========================================== End Build ================================================