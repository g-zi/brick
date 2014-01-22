include <brick.scad>;

// Raiffeisen Silo

// Grundmauer
translate([ 0, 0, 0 ]) brickcircle( 200, 12, 0, 360, 0, 25); // Radius, Bricks, Startwinkel, Winkel, Corr

// Wellblech
for (i = [ 0 : 15 : 360 ]) rotate([0,0,i]) translate([ 22, -180, 110 ]) rotate([-1,-90,90]) Eternit( 551, 50, 17.7, 0 ); // Breite, Hoehe, Wellenlaenge, Shift
//for (i = [ 0 : 7.2 : 360 ]) rotate([0,0,i]) translate([ 8.76, -180, 110 ]) rotate([-1,-90,90]) Eternit( 551, 23.8, 17.7, 0 ); // Breite, Hoehe, Wellenlaenge, Shift
//for (i = [ 0 : 3.6 : 360 ]) rotate([0,0,i]) translate([ 2.85, -180, 110 ]) rotate([-1,-90,90]) Eternit( 551, 11.9, 17.7, 0 ); // Breite, Hoehe, Wellenlaenge, Shift

// U-Profil
for (i = [ 0 : 30 : 360 ]) { difference(){
  rotate([0,0,i]) translate([ 185, -4, 110 ]) cube([10,8,551]);
  rotate([0,0,i]) translate([ 192, -2, 110 ]) cube([4,4,551]);}}

// Traeger //////////////////////////////////////////////////////////
for(i=[ [0,0,30], [0,0,60], [0,0,210], [0,0,240] ]){
  rotate(i) translate([ 184, -5, 510 ]) cube([12,10,155]);
  rotate(i) rotate([0,15,0]) translate([ 20, -6, 640 ]) cube([12,12,60]);

difference(){ rotate(i) rotate([0,-15,0]) translate([ 365.7, -6, 590.2 ]) cube([12,12,50]);
     union(){ rotate(i) translate([ 195, 0, 700 ]) cylinder(h=14,r=3);
              rotate(i) translate([ 185, -7, 712 ]) cube([20,14,10]);
              rotate(i) translate([ 185, -7, 700 ]) cube([4.5,14,14]);}}}

// Dach //////////////////////////////////////////////////////////////
rotate([0,0,-4]){
difference(){
hull(){translate([ 0, 0, 660 ])  cylinder(h=50, r1=200, r2=10, $fn=16 );
translate([ 0, 0, 670 ])  cylinder(h=50, r1=200, r2=10, $fn=16 );}
translate([ 0, 0, 660 ])  cylinder(h=50, r1=180, r2=10, $fn=16 );}

difference(){ union(){
translate([ 0, 0, 719 ])  cylinder(h=5, r=17, $fn=50 );
translate([ 0, 0, 722 ])  cylinder(h=5, r=20, $fn=50 );}
translate([ 0, 0, 718 ])  cylinder(h=10, r=8, $fn=50 );}

for (i = [ 0 : 22.5 : 360 ]) {
rotate([0,14.6,i]) translate([ -174.4, -2, 697 ]) cube([200,4,4]);
rotate([0,0,i]) translate([ 197.5, -2, 660 ]) cube([4,4,11.9]);}

for (i = [ 0 : 20 : 160 ]) {
rotate([-14.8,0,56.3]) translate([ 0, -150+i, 696 ]) cube([11+i/2.6,4,11.9], center=true);
rotate([-14.8,0,56.3+180]) translate([ 0, -150+i, 696 ]) cube([11+i/2.6,4,11.9], center=true);}
}


