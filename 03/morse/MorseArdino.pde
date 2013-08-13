//Made by Kiraly on 10.12.2011
#include <EEPROM.h>

int Letter = 0;
int var;
int Laserpin = 13;
char LetterChar;
char Turtle = 'A';
char Char;   //---------------
String Word = "MILA VOLIM TE"; //| <---- Aici vine textul. In loc de "SOS" pui ghilimele dupa aceea textul tau si inchizi ghilimelele. Eg: "ALUNE". Textul trebuie sa fie CU LITERE MARI.
             //---------------
                      //            Pe pinul 13 este un laser. Pe pinul 11 este un speaker, pentru versiunea audio.



void setup() {
  pinMode(Laserpin, OUTPUT);
   pinMode(11, OUTPUT);
  Serial.begin(9600);
  cactus();
  
 }
 void loop() {}
void cactus() {
   do {
    LetterChar = Word.charAt(Letter);
    Serial.println(Letter); 
    
    Serial.println(LetterChar);
   
    delay(1000);
    Letter = Letter + 1;
    Lettering();
    
} while (Letter < Word.length()+1);
  if (Letter == Word.length()+1) {Letter=0;}
}


void Lettering() {

if (LetterChar=='A') {
  dot(); dash();
  cactus();
  
  
}
if (LetterChar=='B') {
  dash(); dot(); dot();
  cactus();
}
if (LetterChar=='C') {
  dash(); dot(); dash(); dot();
  cactus();
}
if (LetterChar=='D') {
  dash(); dot(); dot();
  cactus();
}
if (LetterChar=='E') {
  dot(); 
  
  
  
  cactus();
}
if (LetterChar=='F') {
  dot(); dot(); dash(); dot();
  cactus();
}
if (LetterChar=='G') {
  dash(); dash(); dot();
  cactus();
}
if (LetterChar=='H') {
  dot(); dot(); dot(); dot();
  cactus();
}
if (LetterChar=='I') {
  dot(); dot();
  cactus();
}
if (LetterChar=='J') {
  dot(); dash(); dash(); dash();
  cactus();
}
if (LetterChar=='K') {
  dash(); dot(); dash();
  cactus();
  
}
if (LetterChar=='L') {
  dot(); dash(); dot(); dot();
  cactus();
}
if (LetterChar=='M') {
  dash(); dash();
  cactus();
}
if (LetterChar=='N') {
  dash(); dot();
  cactus();
}
if (LetterChar=='O') {
  dash(); dash(); dash();
  cactus();
}
if (LetterChar=='P') {
  dot(); dash(); dash(); dot();
  cactus();
  
}
if (LetterChar=='Q') {
  dash(); dash(); dot(); dash();
  cactus();
}
if (LetterChar=='R') {
  dot(); dash(); dot();
  cactus();
}
if (LetterChar=='S') {
  dot(); dot(); dot();
  cactus();
}
if (LetterChar=='T') {
  dash();
  cactus();
}
if (LetterChar=='U') {
  dot(); dot(); dash();
  cactus();
  
}
if (LetterChar=='V') {
  dot(); dot(); dot(); dash();
  cactus();
}
if (LetterChar=='W') {
  dot(); dash(); dash();
  cactus();
}
if (LetterChar=='X') {
  dash(); dot(); dot(); dash();
  cactus();
}
if (LetterChar=='Y') {
  dash(); dot(); dash(); dash();
  cactus();
}
if (LetterChar=='Z') {
  dash(); dash(); dot(); dot();
  cactus
  ();
}




}
 void dot()
{
  digitalWrite(Laserpin, HIGH);
  //tone(11, 200,1000);
  Serial.println("DOT");
  delay(250);
  digitalWrite(Laserpin, LOW);
  //noTone(11);
  delay(250);
}

void dash()
{
  digitalWrite(Laserpin, HIGH);
  //tone(11, 200,1000);
  Serial.println("DASH");
  delay(1000);
  digitalWrite(Laserpin, LOW);
  //noTone(11);
  delay(250);
}
