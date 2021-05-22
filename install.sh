#!/bin/bash

NewDIR=../QRTicketGenerator
mkdir ../QRTicketGenerator
cp Ticket.png $NewDIR
cp default.csv $NewDIR
cp Ticket.xcf $NewDIR
cp ticketing.regular.ttf $NewDIR
cp target/QRGenerator-1.1-SNAPSHOT.jar $NewDIR

cd $NewDIR
mkdir Tickets
mkdir lib
cd lib
wget https://repo1.maven.org/maven2/com/google/zxing/javase/3.4.1/javase-3.4.1.jar
wget https://repo1.maven.org/maven2/com/google/zxing/core/3.4.1/core-3.4.1.jar
cd ..


echo "java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./QRGenerator-1.1-SNAPSHOT.jar userInterface"
