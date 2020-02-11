public void setup() { 
  size(500, 500); 
  noStroke();

  ellipseMode(CENTER);
} 
public void draw() { 
  myFractal(250, 250, 300, 400);
} 
public void myFractal(int x, int y, int z, int a) { 
    if (a==400)
    fill( 252, 184, 41);
  if (a==200)
    fill(135, 197, 245);
  if (a==100)
    fill(96, 62, 148);
  if (a==50)
    fill( 0, 255, 0);
  if (a==25)
    fill(255, 0, 255);
    if(a==12)
    fill(254, 0, 1);
  ellipse(x, y, z, z); 
  if (z>10) { 
    myFractal(x/2,y,z/2,a/2); 
    myFractal(x,y/2,z/2,a/2);
    myFractal(x,250+y/2,z/2,a/2);
    myFractal(250+x/2,y,z/2,a/2);
  }

}

