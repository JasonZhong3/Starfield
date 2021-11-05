Stars[] bob;
void setup() {
  bob = new Stars[100];
  background(0);
  size(1000, 800);
  for (int i = 0; i < 10; i++) {
    bob[i] = new AmongUs();
  }
  for (int i = 5; i < bob.length; i++)
    bob[i] = new Stars();
}
void draw() {
  background(0);
  for (int i = 0; i < 10; i++) {
    bob[i].move();
    bob[i].show();
  }
  for (int i = 5; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
  //strokeWeight(3);
  //fill(255,0,0);//legs
  //rect(310,350,25,70,10);
  //rect(270,350,25,70,10);
  ////body
  //ellipse(350,300,65,120);
  //ellipse(300,300,115,190);
  //fill(255);//googles
  //ellipse(280,280,75,50);
}
class Stars {
  float myX, myY, myAngle;
  int mySpeed, myRed, myGreen, myBlue, myWidth, myHeight;
  Stars() {
    myX = (float)(Math.random()*900)+10.5;
    myY = (float)(Math.random()*800)+10.5;
    mySpeed = (int)(Math.random()*5)+10;
    myRed = 255;
    myGreen = 255;
    myBlue = 255;
    myWidth = (int)(Math.random()*10)+5;
    myHeight = (int)(Math.random()*10)+5;
  }
  void show() {
    fill(myRed, myGreen, myBlue);
    ellipse(myX, myY, myWidth, myWidth);//star
    //among us

  }
  void move() {
    myX += mySpeed;
    if (myX >=1000){
      myX = -10;
      myY = (float)(Math.random()*800)+10.5;
    }
  }
}

class AmongUs extends Stars {
  AmongUs() {
  myRed = (int)(Math.random()*255)+1;
  myGreen = (int)(Math.random()*255)+1;
  myBlue = (int)(Math.random()*255)+1;
  myX = (float)(Math.random()*900)+10.5;
  myY = (float)(Math.random()*800)+10.5;
  //myWidth = 65;
  //myHeight = 30;
  mySpeed = (int)(Math.random()*10)+1;
  }
  void show(){
  strokeWeight(3);
  fill(myRed, myGreen, myBlue);//legs
  rect(myX-50,myY + 40,25,70,10);
  rect(myX-80,myY + 40,25,70,10);
  //body
  ellipse(myX,myY,65,120);
  ellipse(myX-50,myY,115,190);
  fill(255);//googles
  ellipse(myX-70,myY,75,50);
  }
}
