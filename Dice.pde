Die mika;
void setup() {
  size(530, 500);
  noLoop();
  textAlign(CENTER);
}
void draw() {
  background(197);
  int sum = 0;
  for(int y = 0; y<=400; y+=60){
    for(int x = 0; x<=525; x+=60){
  mika = new Die(x, y);
  mika.show();
  sum+=mika.rolls;
    }
  }
  fill(0);
  text("The sum of rolls is " + sum,265,450);
  if(sum % 2 == 0){
    text("The sum of rolls is EVEN",265,465);
  }
  else{
    text("The sum of rolls is ODD",265,465);
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int r = (int)(Math.random()*256+1);
  int g = (int)(Math.random()*256+1);
  int b = (int)(Math.random()*256+1);
  int myX, myY;
  int rolls;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;//variable initializations here
    roll();
  }
  void roll()
  {
    rolls = (int)(Math.random()*6+1);
  }
  void show()
  {
    stroke(0);
    if (rolls % 2 == 0){
      fill(0);
      rect(myX, myY, 50, 50, 15);
    }
    else{
      fill(255);
      rect(myX, myY, 50, 50, 15);
    }
    fill (r,g,b);
    if (rolls == 1) {
      ellipse(myX+25, myY+25, 10, 10);
    }
    else if  (rolls == 2) {
      stroke(255);
      ellipse (myX + 15, myY + 15, 10, 10); 
      ellipse (myX + 35, myY + 35, 10, 10);
    }
    else if (rolls == 3){
      ellipse (myX + 10, myY + 10, 10, 10);
      ellipse (myX + 25, myY + 25, 10, 10);
      ellipse (myX + 40, myY + 40, 10, 10);
    }
    else if (rolls == 4){
      stroke(255);
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
    }
    else if (rolls == 5){
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+40,myY+40,10,10);
      ellipse(myX+25,myY+25,10,10);
      ellipse(myX+10,myY+40,10,10);
      ellipse(myX+40,myY+10,10,10);
    }
    else if (rolls == 6){
      stroke(255);
      ellipse(myX+15,myY+10,10,10);
      ellipse(myX+15,myY+25,10,10);
      ellipse(myX+15,myY+40,10,10);
      ellipse(myX+35,myY+10,10,10);
      ellipse(myX+35,myY+25,10,10);
      ellipse(myX+35,myY+40,10,10);
    }
  }
}
