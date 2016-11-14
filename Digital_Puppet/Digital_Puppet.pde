void setup(){
  size(500,500);
}

void draw() {
  background(100, 40, 10);
  
// BLINK BOTH EYES
  if (keyPressed && key == 's') {
    line(60, 125, 140, 125);
    line(360, 125, 440, 125);
  } else {
    stroke(0);
    strokeWeight(8);
    fill(255);
    ellipse(100, 125, 80, 80);  //Left Eye
    ellipse(400, 125, 80, 80);  // Right Eye
  }

// MOVE PUPILS  
  if (keyPressed && key == 'a') {
    fill(0);
    ellipse(75, 125, 10, 10);                      // Left Pupil Looking Left
    ellipse(375, 125, 10, 10);                     // Right Pupil Looking Left
  } else if (keyPressed && key == 'd') {
    fill(0);
    ellipse(125, 125, 10, 10);                     // Left Pupil Looking Right
    ellipse(425, 125, 10, 10);                     // Right Pupil Looking Right
  } else if (keyPressed && key == 'w') {
    fill(0);
    ellipse(100, 100, 10, 10);                     // Left Pupil Look Up
    ellipse(400, 100, 10, 10);                     // Right Pupil Look Up
  } else if (keyPressed && key == 'x') {
    fill(0);
    ellipse(100, 150, 10, 10);                     // Left Pupil Look Down
    ellipse(400, 150, 10, 10);                     // Right Pupil Look Down
  } else {                                         // Otherwise, draw centered pupils
    fill(0);
    ellipse(100, 125, 10, 10);                     // Left Pupil
    ellipse(400, 125, 10, 10);                     // Right Pupil
  }
  
// MOVE EYEBROWS
  if (keyPressed && keyCode == UP) {
    line(55, 70, 140, 50);                         //Left Eyebrow Innocent
    line(355, 50, 440, 70);                        //Right Eyebrow Innocent
  } else if (keyPressed && keyCode == DOWN) {
    line(55, 70, 140, 90);                         //Left Eyebrow Grumpy
    line(355, 90, 440, 70);                        //Right Eyebrow Grumpy
  } else {
    line(55, 70, 140, 70);                         //Left Eyebrow Flat
    line(355, 70, 440, 70);                        //Right Eyebrow Flat
  } 
  
  line(250, 275, 250, 325);              //Line leading to Mouth
  fill(0);                               //Nose
  arc(250, 225, 100, 90, 0, PI, CHORD);  //Nose
  
  fill(255, 0, 0);                     //Tongue
  arc(250, 325, 100, 100, 0, PI);      //Tongue
  
//  STICK OUT TONGUE
  if (keyPressed && key == ' ') {
    arc(250, 425, 100, 100, 0, PI);      //Long Tongue
    noStroke();
    rect(200, 325, 100, 100);
    stroke(0);
    line(200, 325, 200, 425);
    line(250, 325, 250, 425);  //Centerline of Tongue
    line(300, 325, 300, 425);
    noFill();                           //Mouth
    arc(250, 300, 225, 50, 0, PI);      //Mouth
  } else {
    noFill();                           //Mouth
    arc(250, 300, 225, 50, 0, PI);      //Mouth
    line(250, 325, 250, 350);
  }
  
  println(mouseX, mouseX);
}