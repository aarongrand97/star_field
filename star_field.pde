// array of stars
star[] star_arr = new star[300];

void setup() {
  size(800, 800);
  // populate star array
  for (int i = 0; i != star_arr.length; i++) {
    star_arr[i] = new star();
  }
}

void draw() {
  background(0);
  // move origin to centre
  translate(width/2, height/2);

  for (int i = 0; i != star_arr.length; i++) {
    star_arr[i].update();
    star_arr[i].disp();
  }
}
