include <brick.scad>;

// Fritzlar Stellwerk Ost, Dach
Mauer = 30;

// Dach //////////////////////////////////////////////////////////////////////
difference(){ union() {

difference(){ union() {
translate([ 0+Mauer, 0+Mauer, 515 ]) cube([ 1000-Mauer*2, 530-Mauer*2, 35 ]);
translate([ -100, -100, 530 ]) cube([ 1200, 730, 35 ]);
}
translate([ 100, 100, 510 ]) cube([ 800, 330, 60 ]);
translate([ -70, -70, 542 ]) cube([ 1140, 670, 30 ]);

for (i = [ 15 : 15 : 110 ])
{
  translate([ -100+i, -100+i, 529 ]) cube([ 2, 730.1-i*2, 3 ]);
  translate([ 1100-i, -100+i, 529 ]) cube([ 2, 730.1-i*2, 3 ]);
  translate([ -100+i, -100+i, 529 ]) cube([ 1200.1-i*2, 2, 3 ]);
  translate([ -100+i, 630-i, 529 ]) cube([ 1200.1-i*2, 2, 3 ]);
}}

difference(){ union() {
translate([ -125, -115, 562 ]) dachrinne( 1250, 1, 70, 65, 1 );
translate([ -125, 645, 562 ]) dachrinne( 1250, 1, 70, 65, 1 );

translate([ -112,   75, 652 ]) rotate([45,0,0]) rundziegel( 65, 8, 0, -1 );
translate([ -112,   45, 632 ]) rotate([35,0,0]) rundziegel( 65, 1 );
translate([ -112, -110, 560 ]) rotate([25,0,0]) rundziegel( 65, 5 ); // 5

translate([ 0, 530, 0 ]) mirror([0,1,0]){
translate([ -112,   75, 652 ]) rotate([45,0,0]) rundziegel( 65, 8, 0, -1 );
translate([ -112,   45, 632 ]) rotate([35,0,0]) rundziegel( 65, 1 );
translate([ -112, -110, 560 ]) rotate([25,0,0]) rundziegel( 65, 5 );} // 5
}
translate([ -159.2643, 265, 705 ]) rotate([0,0,45]) cube([ 600, 600, 320 ], center=true);
translate([ 1159.2643, 265, 705 ]) rotate([0,0,45]) cube([ 600, 600, 320 ], center=true);
}

difference(){ union() {
translate([ -115, -125, 562 ]) rotate([0,0,90]) dachrinne( 780, 1, 60, 65, 1 );
translate([ 1115, -125, 562 ]) rotate([0,0,90]) dachrinne( 780, 1, 60, 65, 1 );

translate([ 1000, -12, 0 ]) rotate([0,0,90]){
translate([ -100,   75, 652 ]) rotate([45,0,0]) rundziegel( 40, 8, 0, -1 );
translate([ -100,   45, 632 ]) rotate([35,0,0]) rundziegel( 40, 1 );
translate([ -100, -110, 560 ]) rotate([25,0,0]) rundziegel( 40, 5 );} //5

translate([ 0, 542, 0 ]) rotate([0,0,270]){
translate([ -100,   75, 652 ]) rotate([45,0,0]) rundziegel( 40, 8, 0, -1 );
translate([ -100,   45, 632 ]) rotate([35,0,0]) rundziegel( 40, 1 );
translate([ -100, -110, 560 ]) rotate([25,0,0]) rundziegel( 40, 5 );} //5
}
translate([ 500, -136.3965, 705 ]) rotate([0,0,45]) cube([ 900, 900, 320 ], center=true);
translate([ 500, 666.3965, 705 ]) rotate([0,0,45]) cube([ 900, 900, 320 ], center=true);
}

translate([ -108, -108, 565 ]) rotate([0,-18,45]) dachfirst( 6, 0,1 );
translate([   30,   30, 629 ]) rotate([0,-30,45]) dachfirst( 2, 1,1 );
translate([   75,   75, 665 ]) rotate([0,-34.5,45]) dachfirst( 9, 1,1 );

translate([ -108, 638, 565 ]) mirror([0,1,0]) rotate([0,-18,45]) dachfirst( 6, 0, 1 );
translate([  30,  500, 629 ]) mirror([0,1,0]) rotate([0,-30,45]) dachfirst( 2, 1,1 );
translate([  75,  455, 665 ]) mirror([0,1,0]) rotate([0,-34.5,45]) dachfirst( 9, 1,1 );

translate([ 1108, -108, 565 ]) rotate([0,-18,135]) dachfirst( 6, 0, 1 );
translate([  970,   30, 629 ]) rotate([0,-30,135]) dachfirst( 2, 1,1 );
translate([  925,   75, 665 ]) rotate([0,-34.5,135]) dachfirst( 9, 1,1 );

translate([ 1108, 638, 565 ]) mirror([0,1,0]) rotate([0,-18,135]) dachfirst( 6, 0, 1 );
translate([  970, 500, 629 ]) mirror([0,1,0]) rotate([0,-30,135]) dachfirst( 2, 1,1 );
translate([  925, 455, 665 ]) mirror([0,1,0]) rotate([0,-34.5,135]) dachfirst( 9, 1,1 );

translate([  257, 265, 845 ]) rotate([0,0,0]) dachfirst( 14, 0,1 );

// Schornstein 
translate([ 397, 135, 708]) {
  translate([ 0, 0, 0]) wallhalf(2,25, 0,0, 0);
  translate([ Bw, 0, 0]) rotate(a=[0,0,90]) wallhalf(2,25, 0,0, 1);
  translate([ 0, Bl+Fg+Bw+Fg, 0]) wallhalf(2,25, 0,0, 0);
  translate([ Bw+Bl+Fg+Bw+Fg, 0, 0]) rotate(a=[0,0,90]) wallhalf(2,25, 0,0, 1);
}

// Dachfenster
  translate([ 515, 190, 776]) rotate([41,0,0]) cube([ 50, 50, 10 ], center=true);
  translate([ 515, 190, 776]) rotate([41,0,0]) cube([ 40, 40, 22 ], center=true);
}
translate([ 515, 190, 776]) rotate([41,0,0]) cube([ 36, 36, 50 ], center=true);
translate([ 406, 145, 650]) cube([ 28, 28, 120 ]);
}




