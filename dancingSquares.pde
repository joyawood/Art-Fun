void setup(){
  size(400, 400);
  background(255);
}
float angle = 0;
//int x = width/2;
int x = 200;
int iterations = 1;

void draw(){
    angle = angle%360;
    fill(random(angle/2, angle),random(angle/2, angle),random(angle/2, angle));
    rectMode(CENTER);
    //noFill();
    translate(width/2, height/2);
    rotate(radians(angle));
    rect(x, x, 50, 50);
    angle+=360/iterations; 
    
   if (angle % 360 == 0){
     x -= 50;
     angle = 0;
  }
  
  if(x < -width/2){
    x = 200;
    iterations ++;
    background(255);
    System.out.println(iterations);
  }
  

}
