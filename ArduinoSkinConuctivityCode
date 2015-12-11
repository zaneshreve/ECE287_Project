int conductancePin = A0;
int ledPin = 2; //Pin 12 on ribbon
int conductanceValue = 0;
int threshold = 100;

void setup(){
  pinMode(ledPin, OUTPUT);
  pinMode(conductancePin, INPUT);
  Serial.begin(9600);
}

void loop(){
  conductanceValue = analogRead(conductancePin);
  Serial.println(conductanceValue);
  if(conductanceValue > threshold)
    digitalWrite(ledPin, HIGH);
   else
   digitalWrite(ledPin, LOW);
}
