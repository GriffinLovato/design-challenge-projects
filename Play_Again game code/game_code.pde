int a = 200;
int b = 200;
int c = 200;
int d = 200;
int e = 200;
int f = 200;
int size =1250;
int playagain =1;
Particles[] Name; 
void setup(){
size(1600,1600);
Name =  new Particles[size];
//fullScreen();
background(0);
colorMode(RGB);
//image(bike,50,50);
for (int i = 0; size > i; i++) {
    Name[i] = new Particles(int(random(0,width)),int(random(0,height)),2);
  }

}
void draw() {
  background(0);
  if(playagain==0){
  colorMode(RGB);
  fill(50,175,255);
  textSize(200);
  text("TRON",400,200);
  colorMode(HSB);
  strokeWeight(7.5);
  stroke(75,75,75);
  if (mouseX > 500 && mouseX < 850 && mouseY > 300 && mouseY < 400) {
    a = 255;
    b = 255;
    if (mousePressed) {
      b = 200;
    }
  } else if (mouseX > 500 && mouseX < 850 && mouseY > 450 && mouseY < 550){
    c = 255;
    d = 255;
    if (mousePressed) {
      d = 200;
    }
  } else if (mouseX > 500 && mouseX < 850 && mouseY > 600 && mouseY < 700){
    e = 255;
    f = 255;
    if (mousePressed) {
      f = 200;
    }
  } else {
    a = 200;
    b = 200;
    c = 200;
    d = 200;
   e = 200;
    f = 200;
  }
  fill(a,a,b);
  rect(500,350,350,100);
  fill(c,c,d);
  rect(500,500,350,100);
 
  textSize(40);
  fill(0,0,0);
  text("QUICKPLAY", 540,400);
  text("CUSTOMPLAY", 545,550);
 
  for (int i=0;size>i;i++) {
    //Name[i].burst();
  }
  }
if(playagain==1){
    stroke(255);
  fill(0);
  rect(width/2.35, height/2.97,250, 60);
  textSize(45);
  fill(100, 230, 200);
  text("Play Again", width/2.30, height/2.75);
  if(mousePressed==true){
    playagain=0;
  }
}
}
 