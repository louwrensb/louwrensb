
$fn=100;

r=7;

difference() {
  hull() {
    circle(r);
    translate([39.5,0]) circle(r);
    translate([39.5,95]) circle(r);
    translate([0,95]) circle(r);
  }
translate([4,0]) circle(1.5);
translate([35.5,0]) circle(1.5);
translate([4,95]) circle(1.5);
translate([35.5,95]) circle(1.5);

}