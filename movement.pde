//position
float xPos = 0;
float yPos = 0;

//movement
boolean right = false;
boolean left = false;
boolean down = false;
boolean up = false;


void setup() {
  size(1080,720);
  background(#008080);
  //location
  xPos = width/2;
  yPos = height/2;
}
void draw() {
  //loops
  background(#008080);
  //specify the speed and direction
if (left) {
  xPos = xPos - 2;
}
else if (right) {
  xPos = xPos + 2;
}
else if (up) {
  yPos = yPos -1;
}
else if (down) {
  yPos = yPos +1;
}
//color and placement of ellipse
fill(#fc0352);
ellipse(xPos, yPos, 75, 25);
//collision detection
  if (xPos < 0 || xPos > width) {
    xPos *=-1;
  }
  else if(yPos < 0 || yPos > height) {
    yPos *=-1;
  }
}
//wasd for movement
void keyPressed() {
  if(key == 'a') {
    left = true;
  }
  else if(key == 'd') {
    right = true;
  }
  else if (key == 'w') {
    up = true;
  }
  else if (key == 's') {
    down = true;
  }
}
//if release stop movement
void keyReleased() {
  if(key == 'a') {
    left = false;
  }
  else if(key =='d') {
    right = false;
  }
  else if(key =='w') {
    up = false;
  }
  else if(key =='s') {
    down = false;
  }
}
