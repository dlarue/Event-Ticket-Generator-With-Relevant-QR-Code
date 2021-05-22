#!/bin/bash

cd lib
wget https://repo1.maven.org/maven2/com/google/zxing/javase/3.4.1/javase-3.4.1.jar
wget https://repo1.maven.org/maven2/com/google/zxing/core/3.4.1/core-3.4.1.jar
cd ..
mvn clean
mvn compile
mvn install:install-file -Dfile=./lib/core-3.4.1.jar \
    -DgroupId=com.google.zxing \
    -DartifactId=core-3.4.1 \
    -Dversion=3.4.1 \
    -Dpackaging=jar \
    -DlocalRepositoryPath=./lib \
#mvn install:install-file -Dfile=./lib/javase-3.4.1.jar \
     -Dfile=./lib/javase-3.4.1.jar \
    -DgroupId=com.google.zxing \
    -DartifactId=javase-3.4.1 \
    -Dversion=3.4.1 \
    -Dpackaging=jar \
    -DlocalRepositoryPath=./lib \
    package
#mvn package

echo "java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./QRGenerator-1.1-SNAPSHOT.jar userInterface"
