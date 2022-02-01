int randNum, guessedNum, guessAmount, correctAmount;

void setup() {
  size(1280, 720);
  background(0);
  textAlign(CENTER, CENTER);
  textSize(40);

  guessAmount = 0;
  correctAmount = 0;
}

void draw(){
  background(0);
    randNum = int(random(1, 101));
    guessedNum = int(random(1, 101));

    if (guessedNum == randNum) {
      correctAmount++;
    }
    guessAmount++;
    text("(RandomNum: " + randNum + ")", width/2, height/2 - 100);
    text("(GuessedNum: " + guessedNum + ")", width/2, height/2 + 100);
    text("Gjorde " + guessAmount + " gissningar och fick rätt " + correctAmount + " gånger", width/2, height/2);
    delay(250);
}
