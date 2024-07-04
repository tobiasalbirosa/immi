float miVariable;
void setup() {
  size(400, 400);
  rectMode(CENTER);
}

void draw() {
  background(0);

  for (int i = 0; i < 2; i++) {
    for (int j = 0; j < 2; j++) {
      for (int k = 1; k < 10; k++) {
        if (retornarValor(mouseX)) {
          paraDibujar(mouseX, mouseY, i, j, k);
        }
      }
    }
  }
}
boolean retornarValor (float mX) {
  if (mX > width/2) {
    return true;
  } else {
    return true;
  }
}
void paraDibujar(float mX, float mY, int i, int j, int k) {

  if (k == 5 || k == 3) {
    fill(0);
  } else {
    fill(mX, mY, 255);
  }

  if (k == 2) {
  }
  push();
  translate(i * width/2 + width/4, j * height/2 + height/4);
  rotate(map(mouseX, 0, width, 0, PI*2));
  //pi * 2 == 360
  //pi = 180
  //pi / 2
  rect(0, 0, width/2/k, height/2/k);
  pop();
}
