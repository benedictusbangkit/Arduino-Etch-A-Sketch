#define SCREEN_WIDTH 300;
#define SCREEN_HEIGHT 180;//define size of display processing

int valPotX = 0;
int valPotY = 0;

void setup(){
    Serial.begin(115200); //set baut rate
}

void loop(){
    valPotY = analogRead(A2); //read potensio pin
    valPotX = analogRead(A1);
    int mapX = map(valPotX, 0, 1023, 1,300);
    int mapY = map(valPotY, 0, 1023, 1, 180); //convert potensio pulse to coordinate
    Serial.print(mapX);//Send coordinate x axis
    Serial.print(" "); // Send spcae for seperate data
    Serial.print(mapY);//Send coordinate y axis
    Serial.print(" ");
    delay(10);
}