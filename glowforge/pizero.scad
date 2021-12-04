


$fn=100;

r=3;

difference() {
  hull() {
    circle(r);
    translate([23,0]) circle(r);
    translate([23,58]) circle(r);
    translate([0,58]) circle(r);
  }
translate([1,1]) circle(1.3);
translate([22,1]) circle(1.3);
translate([22,57]) circle(1.3);
translate([1,57]) circle(1.3);

}