
for (x=[0:30]) {
  translate([x*10,0]) line(1,260);
}

for (y=[0:26]) {
  translate([0,y*10]) line(300,1);
}


module line(x,y) {
 hull() {
  circle(0.1);
  translate([x,y]) circle(0.1);
 }
}