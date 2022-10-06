// Explanation
// Triangle strip

// . . . . .
// . . . . .

// Unify points

int cols,rows;
int point_dist = 10;

int w = 800;
int h = 800;



void setup() {
   size(800,800,P3D);
   
   cols = w/point_dist;
   rows = h/point_dist;
}

void draw() {
   background(0);
   stroke(#00FFA3);
   noFill();
   
   //translate(0, height/2);
   rotateX(PI/4);
   
   for (int x = 0; x < cols; x++) {
     beginShape(TRIANGLE_STRIP);
     for (int y = 0; y < rows; y++) {
       //rect(x*point_dist, y*point_dist,point_dist,point_dist);
       y += 0.01;
       x += 0.1;
       vertex(x*point_dist,y*point_dist);
       vertex((x+1)*point_dist,(y)*point_dist);
     }
     endShape();
   }
}
