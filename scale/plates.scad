
r=100;

//top();
for (i=[0:120:240]) rotate(i) translate([r-80-5,-12.7/2,0]) hx711();


difference() {
  union() {
    bottom();
    for (i=[30:30:90]) rotate(i) translate([50,-10.5]) board();
    rotate(300) translate([50,-27.7/2]) 240ips();
    translate([-75,-50]) battery();
  }
  for (i=[30:30:90]) rotate(i) translate([50,-10.5]) board_holes();
  rotate(300) translate([50,-27.7/2]) 240ips_holes();
  translate([-75,-50]) battery_holes();
  }
  
  


module hx711() {
  difference() {
    color("silver") cube([80,13,13]);
    translate([5,12.7/2,-1]) cylinder(13+2, 2,2);
    translate([20,12.7/2,-1]) cylinder(13+2, 2,2);
    translate([60,12.7/2,-1]) cylinder(13+2, 2,2);
    translate([75,12.7/2,-1]) cylinder(13+2, 2,2);
    translate([37,12.7+1,12.7/2]) rotate([90,0,0]) cylinder(13+2,5,5);
    translate([43,12.7+1,12.7/2]) rotate([90,0,0]) cylinder(13+2,5,5);
  }
}

module board() {
    color("green") square([34,21]);
}

module board_holes() {
  translate([4,3]) circle(1.5);
  translate([4,18]) circle(1.5);
}

module 240ips() {
  color("blue") square([39.2,27.7]);
}
module 240ips_holes() {
  translate([2.5,2.5]) circle(1);
  translate([2.5,27.7-2.5]) circle(1);
  translate([39.2-2.5,27.7-2.5]) circle(1);
  translate([39.2-2.5,2.5]) circle(1);
}


module battery() {
  color("darkgrey") square([30,100]);
}

module battery_holes() {
  translate([2,2]) circle(1.5);
  translate([28,2]) circle(1.5);
  translate([2,98]) circle(1.5);
  translate([28,98]) circle(1.5);
}


module top() {
  difference() {
    circle(r);
    for (i=[0:120:240]) rotate(i) translate([r-10,0,0]) circle(3);
  }
}


module bottom() {
  difference() {
    circle(r);
    circle(2.5);
    for (i=[0:120:240]) rotate(i) translate([r-80,0,0]) circle(2.5);
    for (i=[0:120:240]) rotate(i) translate([r-65,0,0]) circle(2.5);
    for (i=[0:120:240]) rotate(i) translate([r-10,0,0]) circle(2.5);
  }
}
