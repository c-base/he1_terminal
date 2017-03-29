void writeLeds(int leds) {
  digitalWrite(PK_0, leds & (1 << 0));
  digitalWrite(PK_1, leds & (1 << 1));
  digitalWrite(PK_2, leds & (1 << 2));
  digitalWrite(PK_3, leds & (1 << 3));
  digitalWrite(PK_4, leds & (1 << 4));
  digitalWrite(PK_5, leds & (1 << 5));
  digitalWrite(PK_6, leds & (1 << 6));
  digitalWrite(PK_7, leds & (1 << 7));
  digitalWrite(PQ_0, leds & (1 << 8));
}

void setup() {
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
  for(int i = 0; i < 4; ++i) {
    writeLeds(i);
    delay(1000);
  }
}

