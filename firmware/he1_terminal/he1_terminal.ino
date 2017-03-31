/**********************************************************
 *  
 * Author: coon
 * Last maintained: 01. April 2017
 * 
 * Description: Controls the LEDs and the switches of the 
 *              HE1-Terminal of c-base.
 *
 * TODO: - Connect the switches
 *       - Find out how the second rotary switch works
 *       - MQTT implementation
 * 
 **********************************************************/

const int numLeds = 9; // Number of LEDs which are currently soldered.
  
void setLeds(uint32_t leds) {
  auto ledIsSet = [](int leds, int ledNo) -> int {
    return (leds & (1 << ledNo)) > 0;
  };

  digitalWrite(PK_0, ledIsSet(leds, 0));
  digitalWrite(PK_1, ledIsSet(leds, 1));
  digitalWrite(PK_2, ledIsSet(leds, 2));
  digitalWrite(PK_3, ledIsSet(leds, 3));
  digitalWrite(PK_4, ledIsSet(leds, 4)); 
  digitalWrite(PK_5, ledIsSet(leds, 5));
  digitalWrite(PK_6, ledIsSet(leds, 6));
  digitalWrite(PK_7, ledIsSet(leds, 7));
  digitalWrite(PQ_0, ledIsSet(leds, 8));
}

void setup() {
  Serial.begin(115200);
  
  pinMode(PK_0, OUTPUT);
  pinMode(PK_1, OUTPUT);
  pinMode(PK_2, OUTPUT);
  pinMode(PK_3, OUTPUT);
  pinMode(PK_4, OUTPUT);
  pinMode(PK_5, OUTPUT);
  pinMode(PK_6, OUTPUT);
  pinMode(PK_7, OUTPUT);
  pinMode(PQ_0, OUTPUT);
}

void loop() {  
  for(int i = 0; i < (1 << numLeds); ++i) {
    setLeds(i);
    delay(125);

    Serial.println(i);
  }
}

