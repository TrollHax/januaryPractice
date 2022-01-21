import uibooster.*;
import uibooster.components.*;
import uibooster.model.*;
import uibooster.model.formelements.*;
import uibooster.model.options.*;
import uibooster.utils.*;

JSONObject json;
UiBooster booster;
Form form, form1;
String name, program;
String[] grade;
float sum, classPoints, totWeight;
float[] points;

void setup() {
  grade = new String[16];
  points = new float[16];
  sum = 0;

  form = new UiBooster()
    .createForm("Val av program")
    .addText("Vad heter du?")
    .addSelection("Välj ditt program", "Teknikprogrammet", "Hej")
    .show();

  name = form.getByLabel("Vad heter du?").asString();
  program = form.getByLabel("Välj ditt program").asString();

  if (program=="Teknikprogrammet") {
    classPoints = 1600;
    form1 = new UiBooster()
      .createForm("Betygsmedelvärde")
      .addSelection("Engelska 5 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Engelska 6 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Idrott och hälsa 1 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Matematik 1c (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Matematik 2c (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Matematik 3c (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Samhällskunskap 1b (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Svenska 1 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Svenska 2 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Svenska 3 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Kemi 1 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Teknik 1 (100 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Historia 1a1 (50 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Religionskunskap 1 (50 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Fysik 1a (150 Poäng)", "A", "B", "C", "D", "E", "F")
      .addSelection("Teknik (150 Poäng)", "A", "B", "C", "D", "E", "F")
      .show();

    for (int i = 0; i <= 15; i++) {
      grade[i] = form1.getByIndex(i).asString();

      if (grade[i] == "A") {
        points[i] = 20;
      } else if (grade[i] == "B") {
        points[i] = 17.5;
      } else if (grade[i] == "C") {
        points[i] = 15;
      } else if (grade[i] == "D") {
        points[i] = 12.5;
      } else if (grade[i] == "E") {
        points[i] = 10;
      } else if (grade[i] == "F") {
        points[i] = 0;
      }
    }
  }
  for (int i = 0; i <= 11; i++) {
    sum = sum + (points[i] * 100);
  }

  for (int i = 12; i <= 13; i++) {
    sum = sum + (points[i] * 50);
  }

  sum = sum + (points[14] * 150);
  sum = sum + (points[15] * 150);
  
  println(sum);

  sum = sum/classPoints;

  print(sum);


  json = new JSONObject(); 
  
  json.setString("name", name); 
  json.setString("program", program);
  json.setInt("summan av alla betyg", int(sum)); 

  saveJSONObject(json, "data/Snittbetyg.json");

  exit();
}
