
m=27;

right();
translate([m*11,0]) right();

translate([m*22,0]) front();
translate([0,m*11]) front();

translate([m*11,m*11]) top();
translate([m*22,m*11]) top();

module right() {
  difference() {
    square(10*m);
    translate([0,0]) vteeth(3);
    translate([2*m,0]) hteeth(2);
    translate([9*m,0]) vteeth(3);
    translate([2*m,9*m]) hteeth(2);
  }
}


module front() {
  difference() {
    square(10*m);
    translate([0,2*m]) vteeth(2);
    translate([2*m,0]) hteeth(2);
    translate([9*m,2*m]) vteeth(2);
    translate([2*m,9*m]) hteeth(2);
  }
}


module top() {
  difference() {
    square(10*m);
    vteeth(3);
    hteeth(3);
    translate([9*m,0]) vteeth(3);
    translate([0,9*m]) hteeth(3);
  }
}


module vteeth(size) {
  for (i=[1:size]) {
    translate([0,(i-1)*4*m]) square([m,m*2]);
  } 
}

module hteeth(size) {
  for (i=[1:size]) {
    translate([(i-1)*4*m,0]) square([m*2,m]);
  } 
}