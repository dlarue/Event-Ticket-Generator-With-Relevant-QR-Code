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
1. git clone https://github.com/dlarue/Event-Ticket-Generator-With-Relevant-QR-Code
2. get xzing core jar( core-3.2.0.jar )
3. get xzing client jar( zxing-javase.jar )
4. compile/package using mvn clean;mvn compile;mvn package
5. run: java -classpath .:target/.:./core-3.2.0.jar:./zxing-javase.jar:./target/QRGenerator-1.0-SNAPSHOT.jar userInterface

## Customize:
- cd Event-Ticket-Generator-With-Relevant-QR-Code
- change all references to Downloads/Test directories to your preferred directories
- edit Ticket.xcf to your liking and export to Ticket.png and place it in your new "Downloads/Test" directory.
- edit default.csv file to your liking and place it in your new "Downloads/Test" directory.

## Run:
- java -classpath .:target/.:./core-3.2.0.jar:./zxing-javase.jar:./target/QRGenerator-1.0-SNAPSHOT.jar userInterface

I've already customized a bit using the Ticket.png default but creating layers for the Event(left side) and Venue(right side). 
I also added batch generation when the search field is null it will traverse the Contestants array and generate all tickets.
# TODO: 
- Setup properties or parameters for source CSV file
- Setup properties or parameters for Ticket image file
- Setup properties or parameters for destination Ticket images
- Create output formatting capabilities so tickets can be batched onto standard A4 perforated card stock
