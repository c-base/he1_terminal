/***********************************************************
 *                                                         *
 * Author: coon                                            *
 * Last maintained: 01. April 2017                         *
 *                                                         *
 * Description: Controls the LEDs and the switches of the  *
 *              HE1-Terminal of c-base.                    *
 *                                                         *
 * TODO: - Finish MQTT implementation                      *
 *       - Connect the switches                            *
 *       - Find out how the second rotary switch works     *
 *                                                         *
 ***********************************************************/

#include <SPI.h>
#include <Ethernet.h>
#include <PubSubClient.h>

const int numLeds = 9;

enum State {
  OFF = 0,
  ON  = 1
};

void setLed(int ledNo, int state) {
  int port = ledNo < 8 ? PK_0 : PQ_0;
  int ledIdOfPort = ledNo % 8;
  
  switch(state) {
    case ON:
      digitalWrite(port + ledIdOfPort, HIGH);
      break;

    case OFF:
      digitalWrite(port + ledIdOfPort, LOW);
      break;
  }
}
  
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
  Ethernet.begin(0);

  Serial.print("My IP address: ");
  Serial.println(Ethernet.localIP());
  
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

// MQTT
char* pServer = "iot.eclipse.org";

void onLedStateChange(int ledNo, int state) {  
  setLed(ledNo, state);
} 

void callback(char* pTopic, byte* pPayload, unsigned int length) {
  if(strcmp(pTopic, "c-base/he1_terminal") == 0) {
    
  }
}

EthernetClient ethClient;
PubSubClient client(pServer, 1883, callback, ethClient);

void processMqtt() {
  if (!client.connected()) {
    Serial.println("Disconnected. Reconnecting....");

    if(!client.connect("he1_terminal_c-base"))
      Serial.println("Connection failed");
    else {
      Serial.println("Connection success");
      if(client.subscribe("c-base/#")) {
        Serial.println("Subscription successfull");
      
      }
    }
  }
 
  client.poll();
  // delay(1000);
}

// end of MQTT

void loop() {  
  for(int i = 0; i < (1 << numLeds); ++i) {
    processMqtt();
    setLeds(i);
   
    Serial.println(i);
    delay(125);
  }
}

