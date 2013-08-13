
int sensOptic = 0;
int motor = 10;
int led13 = 13;
int ton = 1275;
void setup(){
  pinMode(led13,OUTPUT);
  pinMode(motor,OUTPUT);
  analogReference(DEFAULT);
  Serial.begin(9600);
}

void loop(){
  delay(500);
  //Serial.println(analogRead(sensOptic));
  if(analogRead(sensOptic)<400){
    digitalWrite(led13,HIGH);
    digitalWrite(motor,HIGH);
    delay(4000);
    
    
    } else{ 
      digitalWrite(led13,LOW);
      digitalWrite(motor,LOW);
}
}
