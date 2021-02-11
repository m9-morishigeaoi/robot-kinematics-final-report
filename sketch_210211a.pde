float baseH = 100;
float armYZ1 = 10;
float armX1= 50;
float  armY2 = 70;
float armXZ2 = 10;
float armXY3 = 10;
float angle0=0;
float angle1=0;
float angle2 = 0;
float angle3 =0;
float angle1$ =0;
float angle2$=0;
float angle3$=0;
float r=0;
float dif = 1.0;






void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(100, 100, 100, 0, 0, 0, 0, 0, -1);
  
  noStroke(); 
 frameRate(100);
}
 

 
 






void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 'b'){
      angle1 = angle1 + dif;
    }
    if(key == 'B'){
      angle1 = angle1 - dif;
    }
    if(key == 'c'){
      angle2 = angle2 + dif;
    }
    if(key == 'C'){
      angle2 = angle2 - dif;
    }
    if(key == 'd'){
      angle3 = angle3 + dif;
    }
    if(key == 'D'){
      angle3 = angle3 - dif;
    }
    if(key == 'b'){
      angle1$ = angle1$ + dif;
    }
    if(key == 'B'){
      angle1$ = angle1$ - dif;
    }
    if(key == 'f'){
      angle2$= angle2$ + dif;
    }
    if(key == 'F'){
      angle2$ = angle2$ - dif;
    }
    if(key == 'g'){
      angle3$ = angle3$ + dif;
    }
    if(key == 'G'){
      angle3$ = angle3$ - dif;
    }
    
  }
  
 //face
 sphere(25);
  
  //base
  rotateZ(radians(angle0));
 
  pushMatrix();
  translate(0,0,-baseH/2);
  
  
  fill(175);
 box (50,50,baseH);


  //1st link
  
  
  translate(25+armX1/2, 0, baseH/2-armYZ1/2);
   
   
   rotateX(radians(angle1));
  
  fill(#1A0101);
 box(armX1,armYZ1,armYZ1);
 
 
 //2nd link
 rotateX(radians(angle2));
 
 
 
 translate(armX1/2+armXZ2/2, -armYZ1/2+armY2/2, 0);
 fill(#891212);
 box( armXZ2,armY2,armXZ2);
 
 //3rs link
 
 translate(0, armY2/2+5, 0);
 rotateZ(radians(angle3));
 
 fill(#2B64D3);
 sphere( 10);

//1st-2 link
popMatrix();

translate(-25-armX1/2,0, -armYZ1/2);
rotateX(radians(angle1$));
fill(#1A0101);
 box(armX1,armYZ1,armYZ1);
 
 //2nd-2 link
rotateX(radians(angle2$));





 translate(-armX1/2-armXZ2/2,-armYZ1/2+armY2/2 , 0);
 fill(#891212);
 box( armXZ2,armY2,armXZ2);
 
 
 // 3rd -2 link
 translate(0, armY2/2+5, 0);
 rotateZ(radians(angle3$));
 
 
  
 
 fill(#2B64D3);
sphere(10);}
