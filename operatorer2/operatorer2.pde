import uibooster.*;

UiBooster guessBox;

int randNum, guessedNum, guessAmount;
String state;

void setup() {
  size(1280, 720);
  background(0);
  textAlign(CENTER, CENTER);
  textSize(40);

  guessBox = new UiBooster();

  state = "GUESS";
  guessAmount = 1;
}

void draw() {
  switch(state) {

  case "GUESS" :
    background(0);
    randNum = int(random(1, 101));
    guessedNum = int(guessBox.showTextInputDialog("Gissa på ett heltal mellan 1 och 100!"));
    textSize(40);

    if (guessedNum == randNum) {
      text("RÄTT! Spela igen: ENTER", width/2, height/2);
    } else if (abs(guessedNum - randNum) <= 10 && (guessedNum - randNum != 0)) {
      text("HYFSAT ÄNDÅ, INOM 10 (" + randNum + ") Spela igen: ENTER", width/2, height/2);
    } else if (abs(guessedNum - randNum) > 10 && guessedNum != randNum) {
      text("DÅLIG GISSNING, TYVÄRR (" + randNum + ") Spela igen: ENTER", width/2, height/2);
    }
    textSize(25);
    text("Number of Guesses: " + guessAmount, width-175, height-700);
    guessAmount++;
    state = "GUESS";
    break;
  }
}
