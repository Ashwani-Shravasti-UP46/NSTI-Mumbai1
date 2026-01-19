const int led1
const int led2
const int led3
const int led4
void setup(){
    pinMode(13, OUTPUT);
    pinMode(12, OUTPUT);
    pinMode(14, OUTPUT);
    pinMode(27, OUTPUT);

    digitalWrite(led12, Low); 
    digitalWrite(led2, LOW);
    digitalWrite(led3, LOW);
    digitalWrite(led4, LOW); 
} 
void loop(){
    digitalWrite(led1, HIGH); 
    delay(1000); 
    digitalWrite(led1, LOW); 
    delay(1000); 
    digitalWrite(led2, HIGH); 
    delay(1000); 
    digitalWrite(led2, LOW); 
    delay(1000); 
    digitalWrite(led3, HIGH); 
    delay(1000); 
    digitalWrite(led3, LOW);delay(1000); 
digitalWrite(led4, HIGH); 
delay(1000); 
digitalWrite(led4, LOW); 
delay(1000);
}
``