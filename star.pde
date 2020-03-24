

class star {
  float x;
  float y;
  float z;

  star() {
    // initialise the positions
    x = random(-width/2, width/2);
    y = random(-height/2, width/2);
    z = random(0, width); // essentially depth
  }

  void update() {
    z-= 10; // bring the star 'closer'
    if (z<1) { // star is now at min depth
      reset();
    }
  }

  void disp() {
    float temp_x = map(x/z, 0, 1, 0, width);
    float temp_y = map(y/z, 0, 1, 0, height);

    float rad = map(z, 1, width, 15, 0); // make star bigger the close it is
    circle(temp_x, temp_y, rad);
  }
  
  void reset(){
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width);
  }
}
