
pizero();

$fn=100;

r=3;
m=3;

v= [ [0,0], [23,0],[0,58],[23,58] ];

module respeaker() {
  difference() {
    pizero();
    translate([9,13]) circle(8); 
    translate([3,-4]) square([5,5]);
    translate([3,57]) square([5,5]);
  }
}

module pizero() {
  difference() {
    hull() {
      for (i=v) translate(i) circle(6);
    }
    for (i=v) translate(i) circle(1.3);
  }
}