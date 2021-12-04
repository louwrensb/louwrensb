
$fn=100;

r=7;

difference() {
  hull() {
    circle(r);
    translate([48,0]) circle(r);
    translate([48,100]) circle(r);
    translate([0,100]) circle(r);
  }
translate([8,1]) circle(1.5);
translate([40,1]) circle(1.5);
translate([8,99]) circle(1.5);
translate([40,99]) circle(1.5);

}