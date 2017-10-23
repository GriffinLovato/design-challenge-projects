class Particles {
  int X; //X position
  int Y; //Y position
  int C; //Color
  int D;
  
  Particles(int Xpos,int Ypos,int CTF) {
    X=Xpos;
    Y=Ypos;
    D=CTF;
  }
  
    
  void burst() {
      point(X,Y);
      point(X+1,Y);
      point(X-1,Y);
      point(X,Y+1);
      point(X,Y-1);
      if (D==2) {
        colorMode(HSB);
        fill(C,255,255);
        stroke(C,255,255);
      }
      Y+=1;
      X+=random(-1,2);
      if(Y==height) {
        Y=0;
      }
      if(X==0){
        X=width; 
      }
      if (X==width) {
        X=0;
      }
      
      if (C==360) {
        C=0;
      }
      C= C+1;
  }
}