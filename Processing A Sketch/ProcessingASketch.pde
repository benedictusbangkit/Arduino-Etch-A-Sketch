 import processing.serial.*; //import Serial library
Serial myPort; //Make object for port
String mapData; //Make object to store data from port

void setup(){
  size(300, 180); //Set window size
  myPort = new Serial(this, "/dev/ttyUSB0", 115200);  //Read serial port at 115200 baut rate
}

void draw(){
 if (myPort.available()>0){
  mapData = myPort.readString();
  } //If there's a data from port store to mapData
 float[] Coordinate = float(split(mapData, ' ')); //Remove space from data then store to coordinate
 float mapY = Coordinate[1];//Store data with index 1 to mapX
 float mapX = Coordinate[0];//Store data with index 0 to mapY
 //Make ellips for marker
 fill(0);
 ellipse(mapX, mapY, 2, 2);//use mapX & mapY as coordinate
}
