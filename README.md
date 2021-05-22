# Automatic-Ticket-Generator-With-Automated-QR-Code

Generates ticket according to provided ticket `image` template  and read data from `CSV`  . 

## Technology Used 
* **Java**: used to write the whole backend 
* **JavaAWT**: used in frontend 
* **google zxing**: used to generate QR code
* **Maven**
## User Guideline
  To use this software you need to add the font name *ticketing.regular* (as it used to write data) in your system. Set the path of your csv data file and the path you want to store the generated ticket in the class named "TicketMaker.java". 

# UPDATE:  installation and use.

## Install, Customize and Run
1. mvn clean compile package
2. run install.sh it is a simple script which creates an install directory and copies needed files to run from that directory
3. run: java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./QRGenerator-1.1-SNAPSHOT.jar userInterface
# OR
1. git clone https://github.com/dlarue/Event-Ticket-Generator-With-Relevant-QR-Code
2. get xzing core jar( core-3.4.1.jar )   wget https://repo1.maven.org/maven2/com/google/zxing/core/3.4.1/core-3.4.1.jar
3. get xzing client jar( javase-3.4.1.jar ) wget https://repo1.maven.org/maven2/com/google/zxing/javase/3.4.1/javase-3.4.1.jar
4. compile/package using mvn clean compile package
5. run: java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./target/QRGenerator-1.1-SNAPSHOT.jar userInterface
# OR
1. run: buildAll.sh 
2. run: java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./target/QRGenerator-1.1-SNAPSHOT.jar userInterface

## Customize:
- cd Event-Ticket-Generator-With-Relevant-QR-Code
- edit with GIMP(free open source graphic editor) Ticket.xcf to your liking and export to Ticket.png and place it in your install directory.
- edit default.csv file to your liking and place it in your install directory. note: no null fields are allowed

## Run:
- java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./target/QRGenerator-1.1-SNAPSHOT.jar userInterface
#OR
- java -classpath ./lib/core-3.4.1.jar:./lib/javase-3.4.1.jar:./QRGenerator-1.1-SNAPSHOT.jar userInterface

## USAGE:
Search for a UerID number and print a ticket for that user.  For batch mode which prints all entries in the database/CSV file you
leave the search field blank and hit the generate button.  All tickets show up in the Tickets directory.

## TODO: 
- Setup properties or parameters for source CSV file
- Setup properties or parameters for Ticket image file
- Setup properties or parameters for destination Ticket images
- Create output formatting capabilities so tickets can be batched onto standard A4 perforated card stock
