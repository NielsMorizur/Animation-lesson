//if wanted, can make color variables:
color green = #63E06B;
color blue = #40B0E2;
color yellow = #FFD05E;
color dgreen = #217424;
color white = #FFFFFF;

int x1=-200; //big hills
int x2=200;
int x3=600;

int x4=-100; //small hills
int x5=100;
int x6=300;
int x7=500;
int x8=700;

int c1=400; //cloud

int bunny=0;

void setup(){
  size(800, 600);
  noStroke();
}
void draw() {
 background(blue); 

   fill(white); //cloud
  ellipse(c1, 150, 100, 100);
  ellipse(c1, 200, 100, 100);
  ellipse(c1-50, 200, 100, 100);
  ellipse(c1+50, 200, 100, 100);
  //cloud move
  c1=c1+1;
  if (c1 == 1000) {
   c1=-200; 
  }

   fill(green);
  ellipse(x1, 400, 400, 400);
  ellipse(x2, 400, 400, 400);
  ellipse(x3, 400, 400, 400);
  //move big hills
  x1=x1+2;
  x2=x2+2;
  x3=x3+2;
  
    fill(dgreen); //small hills
  ellipse(x4, 400, 200, 200);
  ellipse(x5, 400, 200, 200);
  ellipse(x6, 400, 200, 200);
  ellipse(x7, 400, 200, 200);
  ellipse(x8, 400, 200, 200);
  //move
  x4=x4+4;
  x5=x5+4;
  x6=x6+4;
  x7=x7+4;
  x8=x8+4;
  
    fill(yellow); //ground
  rect(0, 400, 800, 200);
   
   pushMatrix(); 
  translate(bunny, 250 ); 
  bunny();
  bunny=bunny+5;
   popMatrix(); //only thing getting translated
   
   //bunny
  if (bunny>=1000) {
   bunny= -300; 
  }
   
   //big hills
  if (x1>=1000) {
    x1=-200;
  }
  if(x2>=1000) {
    x2=-200; 
  }
  if(x3>=1000) {
    x3=-200;
  }
  
  //small hills
  if(x4>=900) {
    x4=-100; 
  }
  if(x5>=900) {
    x5=-100;
  }
  if(x6>=900) {
    x6=-100; 
  }
  if(x7>=900) {
    x7=-100;
  }
  if(x8>=900) {
    x8=-100; 
  }
}
//-----------------------------------------
void bunny() {
 noStroke();
 fill(255);
 ellipse(100, 100, 50, 100);
 ellipse(200, 100, 50, 100);
 ellipse(150, 200, 200, 200);
 fill(0);
 ellipse(100, 200, 30, 30);
 ellipse(200, 200, 30, 30);
 ellipse(100, 200, 30, 30);
}
