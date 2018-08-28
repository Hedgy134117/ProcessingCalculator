int currentNumber;
int numbers[] = new int[1000];
int i = 0;
char currentSymbol;

public void settings() {
  size(400, 600);
}

public void setup() {
  
}

public void MPC(int mxl, int myl, int w, int h, int number) {
  if((mouseX < mxl+w) && (mouseY < myl+h) && (mouseX > mxl) && (mouseY > myl)) {
    currentNumber = number;
    
  }
}

public void SMPC(int mxl, int myl, int w, int h, char symbol) {
  if((mouseX < mxl+w) && (mouseY < myl+h) && (mouseX > mxl) && (mouseY > myl)) {
    currentSymbol = symbol;
  }
}

public void mousePressed() {
  MPC(25, 175, 75, 75, 1);
  MPC(125, 175, 75, 75, 2);
  MPC(225, 175, 75, 75, 3);
  SMPC(325, 175, 70, 75, '/');
  MPC(25, 275, 75, 75, 4);
  MPC(125, 275, 75, 75, 5);
  MPC(225, 275, 75, 75, 6);
  SMPC(325, 275, 70, 75, 'X');
  MPC(25, 375, 75, 75, 7);
  MPC(125, 375, 75, 75, 8);
  MPC(225, 375, 75, 75, 9);
  SMPC(325, 375, 70, 75, '+');
  MPC(125, 475, 75, 75, 0);
  SMPC(325, 475, 70, 75, '-');
}

public void drawButtons() {
  noFill();
  stroke(255);
  rect(25, 175, 75, 75);
  rect(125, 175, 75, 75);
  rect(225, 175, 75, 75);
  rect(325, 175, 70, 75);
  rect(25, 275, 75, 75);
  rect(125, 275, 75, 75);
  rect(225, 275, 75, 75);
  rect(325, 275, 70, 75);
  rect(25, 375, 75, 75);
  rect(125, 375, 75, 75);
  rect(225, 375, 75, 75);
  rect(325, 375, 70, 75);
  rect(125, 475, 75, 75);
  rect(325, 475, 70, 75);
  fill(255);
  textSize(24);
  text("1", 50, 225);
  text("2", 150, 225);
  text("3", 250, 225);
  text("/", 350, 225);
  text("4", 50, 325);
  text("5", 150, 325);
  text("6", 250, 325);
  text("X", 350, 325);
  text("7", 50, 425);
  text("8", 150, 425);
  text("9", 250, 425);
  text("+", 350, 425);
  text("0", 150, 525);
  text("-", 350, 525);
}

public void draw() {
  background(0);
  drawButtons();
  text(currentNumber, 350, 100);
  text(currentSymbol, 50, 100);
}
