import uibooster.*;

UiBooster guessBox;

int randNum, guessedNum;

void setup(){
    size(800, 400);
    background(0);
    textAlign(CENTER, CENTER);
    textSize(40);

    guessBox = new UiBooster();

    randNum = int(random(1, 101));

    guessedNum = int(guessBox.showTextInputDialog("Gissa på ett heltal mellan 1 och 100!"));

    if (guessedNum == randNum){
        text("RÄTT!", width/2, height/2);
    }
    else if (abs(guessedNum - randNum) <= 10 && (guessedNum - randNum != 0)){
        text("HYFSAT ÄNDÅ, INOM 10 (" + randNum + ")", width/2, height/2);
    }
    else if (abs(guessedNum - randNum) > 10 && guessedNum != randNum){
        text("DÅLIG GISSNING, TYVÄRR (" + randNum + ")", width/2, height/2);
    }


}
