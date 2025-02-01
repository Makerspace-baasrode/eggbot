   cupHeight = 10;
   cupDiameter = 20;
   cylDiameter = 14;
   shaftDiameter = 4.9;  // 7.7
   shaftHeight = 50;  // 13
   holeDepth = 10;
   fudge = 0.6;

   difference() {
     cylinder(h = cupHeight, r=cupDiameter/2);
     translate([0,0,-0.4*cupDiameter/2]) { sphere(r=0.9*cupDiameter/2); }
   }
   translate([0,0,cupHeight]) {
   difference() {
       cylinder(h = shaftHeight, r=cylDiameter/2);
       translate([0,0,shaftHeight-holeDepth]) { cylinder(h = shaftHeight+2, r=(shaftDiameter+fudge)/2); }
   }
   }

