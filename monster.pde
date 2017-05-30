int x = 250;
int y = 300;
int x1 = 175;
int x2 = 325;
int x3=200;
int x4=225;
int x5=275;
int x6= 300;







void setup(){
size(500, 500);
smooth();
}
  
  //move left and right
  void keyPressed(){
  if (keyPressed && (key == CODED)){ // If it’s a coded key
if (keyCode == LEFT){  // If it’s the left arrow
x--;
x1--;
x2--;
x5--;
x4--;
x3--;
x6--;
}else if (keyCode == RIGHT){  // If it’s the right arrow
x++;
x1++;
x2++;
x5++;
x4++;
x3++;
x6++;
}
  }
  if(key=='v'){

    
  }
  }
  
  void draw(){
    background(0);
    
  //monster
    //body
     fill(5, 200, 255);
  ellipse(x, 250, y, y);
    //eyes
  fill(255);
  ellipse(x1, 225, 50, 50);
  ellipse(x2, 225, 50, 50);
  
  fill(0);
  
    float eyeX = map(mouseX, 0, width, -8, 8);
    float eyeY = map(abs(mouseX - width/2) + width/2, 0, width/2, -16, -8);
    ellipse(x1 + eyeX, 225 - eyeY, 10, 10);
ellipse(x1+150 + eyeX, 225- eyeY, 10, 10);
 //mouth
strokeWeight(10);
  line(x1, y, x2, y);
  triangle(x1, y, x3, 350, x4, y);
  triangle(x2, y,  x6, 350, x5, y);

  }