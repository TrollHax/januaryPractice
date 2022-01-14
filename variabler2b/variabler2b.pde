import uibooster.*;

UiBooster booster, booster2, booster3;

String name;
float income;
float raise;


void setup() {
  size(800, 400);
  background(10);

  booster = new UiBooster();
  name = booster.showTextInputDialog("Vad heter du?");

  booster2 = new UiBooster();
  income = float(booster.showTextInputDialog("Vad är din månadslön?"));

  booster3 = new UiBooster();
  raise = float(booster.showTextInputDialog("Hur stor är din lönehöjning i procent?"));

  raise = 1 + raise/100;

  income = income*raise;

}

void draw() {
  textAlign(CENTER, CENTER);
  textSize(32);
  text(name + ", " +  "din nya lön är " + income + " kr/mån.", width/2, height/2);
}