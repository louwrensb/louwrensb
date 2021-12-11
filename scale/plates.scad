$fn=100;
r=100;

//total();
//top();

spacers();

module spacers() {
    difference() {
      union() {
        hull() {
          translate([0,0]) circle(5);
          translate([15,0]) circle(5);
        } 

      }
      translate([0,0]) circle(2.5);
          translate([15,0]) circle(2.5);
    }
}


module total() {
  difference() {
    union() {
      bottom();
      for (i=[30:30:90]) rotate(i) translate([50,-10.5]) board();
      rotate(300) translate([60,-39.2/2]) 240ips();
      translate([-75,-50]) battery();
    }
    for (i=[30:30:90]) rotate(i) translate([50,-10.5]) board_holes();
    rotate(300) translate([60,-39.2/2]) 240ips_holes();
    translate([-75,-50]) battery_holes();
    for (i=[0:120:240]) rotate(i) translate([r-80-5,-12.7/2]) hx711_holes();  
  }
}


module hx711() {
  difference() {
    color("silver") cube([80,13,13]);
    translate([37,12.7+1,12.7/2]) rotate([90,0,0]) cylinder(13+2,5,5);
    translate([43,12.7+1,12.7/2]) rotate([90,0,0]) cylinder(13+2,5,5);
  }
}

module hx711_holes() {
 translate([5,12.7/2,-1]) circle(2.5);
 translate([20,12.7/2,-1]) circle(2.5);
 //translate([60,12.7/2,-1]) circle(2);
 translate([75,12.7/2,-1]) circle(2.5);
}


module board() {
    color("green") square([34,21]);
}

module board_holes() {
  translate([4,3]) circle(1.5);
  translate([4,18]) circle(1.5);
}

module 240ips() {
  color("blue") square([27.7,39.2]);
}
module 240ips_holes() {
  translate([2.5,2.5]) circle(1);
  translate([2.5,39.2-2.5]) circle(1);
  translate([27.7-2.5,39.2-2.5]) circle(1);
  translate([27.7-2.5,2.5]) circle(1);
}


module battery() {
  color("darkgrey") square([30,100]);
}

module battery_holes() {
  translate([2,2]) circle(1.5);
  translate([27,2]) circle(1.5);
  translate([2,97]) circle(1.5);
  translate([27,97]) circle(1.5);
}


module top() {
  difference() {
    circle(r);
    for (i=[0:120:240]) rotate(i) translate([r-10,0,0]) circle(3.5);
  }
}


module bottom() {
  difference() {
    circle(r);
  }
}
