include <brick.scad>;

// Nebengebaeude Fritzlar

// Linke Haelfte ###########################################################################

//translate([ -5,-10, -40 ]) cube([ 930, 458, 20 ]); // Boden

//translate([ 22, 176, 150 ]) cube([ 4, 86, 48 ]); // Fenster
translate([ 70, 12, -22 ]) cube([ 130, 10, 225 ]); // Tuer
translate([ 535, 12, -22 ]) cube([ 130, 10, 225 ]); // Tuer
//translate([ 332, 18, 80 ]) cube([ 71, 4, 65 ]); // Fenster
//translate([ 795, 18, 80 ]) cube([ 71, 4, 65 ]); // Fenster
translate([ 546, -1, 260 ]) cube([ 106, 15, 120 ]); // Tuer oben
//translate([ 332, 415, 80 ]) cube([ 71, 4, 65 ]); // Fenster
//translate([ 562, 415, 80 ]) cube([ 71, 4, 65 ]); // Fenster
//translate([ 795, 415, 80 ]) cube([ 71, 4, 65 ]); // Fenster

// Front ///////////////////////////////////////////////////////////////////
{
difference() { union() {
// Fensterbank
translate([ 329, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 329, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 334, Bw, 84 ]) cube([ 68, 8, 3 ]);
translate([ 333, Bw, 83 ]) cube([ 5, 8, 68 ]);
translate([ 397, Bw, 83 ]) cube([ 5, 8, 68 ]);

translate([ 335, Bw, 104 ]) cube([ 68, 8, 4 ]);
translate([ 335, Bw, 124 ]) cube([ 68, 8, 4 ]);

translate([ 354.5, Bw, 83 ]) cube([ 4, 8, 68 ]);
translate([ 375.5, Bw, 83 ]) cube([ 4, 8, 68 ]);

translate([ 355, Bw, 142 ]) cube([ 24, 8, 3 ]);
translate([ 375, Bw, 143 ]) rotate([0,13.5,0]) cube([ 24, 8, 3 ]);
translate([ 359, Bw, 143 ]) mirror(0,1,0)  rotate([0,13.5,0]) cube([ 24, 8, 3 ]);

// Fensterbank
translate([ 792, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 792, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 798, Bw, 84 ]) cube([ 68, 8, 3 ]);
translate([ 795, Bw, 83 ]) cube([ 5, 8, 68 ]);
translate([ 860, Bw, 83 ]) cube([ 5, 8, 68 ]);

translate([ 798, Bw, 104 ]) cube([ 68, 8, 4 ]);
translate([ 798, Bw, 124 ]) cube([ 68, 8, 4 ]);

translate([ 817.5, Bw, 83 ]) cube([ 4, 8, 68 ]);
translate([ 838.5, Bw, 83 ]) cube([ 4, 8, 68 ]);

translate([ 818, Bw, 142 ]) cube([ 24, 8, 3 ]);
translate([ 838, Bw, 143 ]) rotate([0,13.5,0]) cube([ 24, 8, 3 ]);
translate([ 822, Bw, 143 ]) mirror(0,1,0)  rotate([0,13.5,0]) cube([ 24, 8, 3 ]);

translate([ 0, -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Links

translate([ 1*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 2);
translate([ 1*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(9.6, 4, 0,0, 1);
translate([ 8*(Bl+Fg), 0, 0]) wall(2.6, 29, 0,0, 2);
translate([ 1*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.6, 13, 0,0, 0); // Oben Links

translate([ 9.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 1. Saeule

translate([ 10.5*(Bl+Fg), 0, 0]) wall(9.1,10, 0,0, 0);
translate([ 10.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,11, 0,0, 4);
translate([ 16*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,11, 0,0, 4);
translate([ 10.5*(Bl+Fg), 0, 21*(Bh+Fg)]) wall(9.1, 12, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1, 13, 0,0, 0); // Oben Halblinks

translate([ 18.5*(Bl+Fg), -Bh, 0]) wall(1.5,45, 0,0, 1); // 2. Saeule

translate([ 18.5*(Bl+Fg), -Bh, 45*(Bh+Fg)]) wall(2.5, 3, 0,0, 0);
translate([ 18.5*(Bl+Fg), -Bh, 48*(Bh+Fg)]) wall(3.5, 4, 0,0, 0);
translate([ 19*(Bl+Fg), -Bh, 52*(Bh+Fg)]) wall(10, 10, 0,0, 0); // Oben Mitte
translate([ 19.5*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(9.6 ,4, 0,0, 1);
translate([ 19.5*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(2.5,14, 0,0, 0);
translate([ 26*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(3.1,14, 0,0, 0);
translate([ 19.5*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 1);
translate([ 26.5*(Bl+Fg), 0, 0]) wall(2.6,29, 0,0, 1);
translate([ 27*(Bl+Fg), -Bh, 45*(Bh+Fg)]) wall(2.5, 3, 0,0, 0);
translate([ 26*(Bl+Fg), -Bh, 48*(Bh+Fg)]) wall(3.5, 4, 0,0, 0);

translate([ 28*(Bl+Fg), -Bh, 0]) wall(1.5,45, 0,0, 1); // 3. Saeule

translate([ 29*(Bl+Fg), 0, 0]) wall(9.1,10, 0,0, 0);
translate([ 29*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,11, 0,0, 4);
translate([ 34.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,11, 0,0, 4);
translate([ 29*(Bl+Fg), 0, 21*(Bh+Fg)]) wall(9.1, 12, 0,0, 0);
translate([ 29*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1,13, 0,0, 0); // Oben Halbrechts

translate([ 37*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 4. Saeule

translate([ Bl+Fg, -Bh/2, 33*(Bh+Fg) ]) reiter( 37, -4,0, 0.5 ); // Reiter

// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 6, 0); // Links innen
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 6, 0); // Links 
translate([ 8*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 46, 0); // Halblinks innen
translate([ 8*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halblinks 
translate([ 26*(Bl+Fg)+Bw+Fg, 0, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts innen
translate([ 26*(Bl+Fg)+Bw+Fg, -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts 
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 18.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 28*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);

translate([ 0, 0, -10 ]) {
// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 6, 0); // Links innen
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 6, 0); // Links 
translate([ 8*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 46, 0); // Halblinks innen
translate([ 8*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halblinks 
translate([ 26*(Bl+Fg)+Bw+Fg, 0, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts innen
translate([ 26*(Bl+Fg)+Bw+Fg, -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts 
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 18.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 28*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}}
translate([925, -11, -25]) cube([75, 48, 390]); // freischneiden

translate([ 3*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(19, 180, 0.52, 2);
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.72, 2);
translate([ 21.52*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(20, 180, 0.39, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.72, 2);

translate([ 22*(Bl+Fg)-Fg, -Bh, 50*(Bh+Fg) ]) bbcut(16, 130, 0.6, 2);

// Dach abschneiden
translate([0, 0, -5]){ 
translate([462, -8, 362]) 
rotate(a=-34,v=[0,1,0])
cube([180, 32, 75]);
translate([586, -8, 463]) 
rotate(a=34,v=[0,1,0])
cube([180, 32, 75]);}
}
translate([ 3*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(19, 180, 0.52, 2);
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.72, 2);
translate([ 21.52*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(20, 180, 0.39, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.72, 2);
//translate([ 40*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(19, 180, 0.52, 2);

translate([ 22*(Bl+Fg)-Fg, -Bh, 50*(Bh+Fg) ]) brickbow(16, 130, 0.6, 2);
}


// Seite Links /////////////////////////////////////////////////////////////
translate([ Bw/2, (Bl+Fg)*18-Bw/2-Fg, 0]) rotate(a=-90,v=[0,0,1]) 
{
difference() { union() {
translate([ 0, -Bh, 0]) wall(1.5,50, 0,0, 0); // Ecke Links
// Ausfuellen
translate([ 1.25*(Bl+Fg), 0, 0]) wall(15.5,19, 0,0, 1);
translate([ 1.25*(Bl+Fg), 0, 19*(Bh+Fg)]) wall(6.25,10, 0,0, 0);
translate([ 10.5*(Bl+Fg), 0, 19*(Bh+Fg)]) wall(6.25,10, 0,0, 0);
translate([ 1.25*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(15.5, 4, 0,0, 0);
translate([ 1.25*(Bl+Fg), -Bh/2, 33*(Bh+Fg) ]) reiter( 15.5, -4, 4,0.25, 1 );

translate([ 1.25*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(15.5, 6, 0,0, 1);
translate([ 1.25*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(6.25,10, 0,0, 1);
translate([ 8.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(1,10, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(6.25,10, 0,0, 1);

translate([ 1.25*(Bl+Fg), 0, 52*(Bh+Fg) ]) wall(15.5,3, 0,0, 1);
translate([ 2.25*(Bl+Fg), 0, 55*(Bh+Fg) ]) wall(13.5,3, 0,0, 0);
translate([ 3.5*(Bl+Fg), 0, 58*(Bh+Fg) ]) wall(11,3, 0,0, 1);
translate([ 4.5*(Bl+Fg), 0, 61*(Bh+Fg) ]) wall(9,3, 0,0, 0);
translate([ 5.5*(Bl+Fg), 0, 64*(Bh+Fg) ]) wall(7,3, 0,0, 1);
translate([ 6.5*(Bl+Fg), 0, 67*(Bh+Fg) ]) wall(5,3, 0,0, 0);
translate([ 7.5*(Bl+Fg), 0, 70*(Bh+Fg) ]) wall(3,3, 0,0, 1);
//  0.125   0.25   0.375   0.5   0.625   0.75   0.875
// Oben Links
translate([ 1*(Bl+Fg),   -Bh, 43*(Bh+Fg) ]) wall(1.625,3, 0, 0, 1);
translate([ 1*(Bl+Fg),   -Bh, 46*(Bh+Fg) ]) wall(2.75 ,3, 0, 0, 0);
translate([ 0.5*(Bl+Fg), -Bh, 49*(Bh+Fg) ]) wall(4.375,3, 0, 0, 1);
translate([ 1*(Bl+Fg), -Bh, 52*(Bh+Fg) ]) wall(5,3, 0, 0, 0);
translate([ 2*(Bl+Fg), -Bh, 55*(Bh+Fg) ]) wall(5.125,3, 0, 0, 1);
translate([ 3.5*(Bl+Fg), -Bh, 58*(Bh+Fg) ]) wall(4.75,3, 0, 0, 0);

translate([ 1.125*(Bl+Fg), -Bh/2, 42*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 2.25*(Bl+Fg),  -Bh/2, 45*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 3.375*(Bl+Fg), -Bh/2, 48*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 4.5*(Bl+Fg),   -Bh/2, 51*(Bh+Fg) ]) wall(1.5,1, 0, 0, 1);
translate([ 5.625*(Bl+Fg), -Bh/2, 54*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 6.75*(Bl+Fg),  -Bh/2, 57*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
// Oben Rechts
translate([ 9.75*(Bl+Fg),   -Bh, 58*(Bh+Fg) ]) wall(4.75,3, 0, 0, 0);
translate([ 10.875*(Bl+Fg), -Bh, 55*(Bh+Fg) ]) wall(5.125,3, 0, 0, 1);
translate([ 12*(Bl+Fg),     -Bh, 52*(Bh+Fg) ]) wall(5,3, 0, 0, 1);
translate([ 13.125*(Bl+Fg), -Bh, 49*(Bh+Fg) ]) wall(4.375,3, 0, 0, 1);
translate([ 14.25*(Bl+Fg),  -Bh, 46*(Bh+Fg) ]) wall(2.75,3, 0, 0, 1);
translate([ 15.375*(Bl+Fg), -Bh, 43*(Bh+Fg) ]) wall(1.625,3, 0, 0, 1);

translate([ 9.75*(Bl+Fg),   -Bh/2, 57*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 10.875*(Bl+Fg), -Bh/2, 54*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 12*(Bl+Fg),     -Bh/2, 51*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 13.125*(Bl+Fg), -Bh/2, 48*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 14.25*(Bl+Fg),  -Bh/2, 45*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 15.375*(Bl+Fg), -Bh/2, 42*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
// Spitze
translate([ 4.5*(Bl+Fg), -Bh, 61*(Bh+Fg) ]) wall(9,3, 0, 0, 1);
translate([ 5.5*(Bl+Fg), -Bh, 64*(Bh+Fg) ]) wall(7,3, 0, 0, 0);
translate([ 6.5*(Bl+Fg), -Bh, 67*(Bh+Fg) ]) wall(5,3, 0, 0, 1);
translate([ 7.5*(Bl+Fg), -Bh, 70*(Bh+Fg) ]) wall(3,3, 0, 0, 0);
// zurueckgesetzt Spitze
translate([ 8*(Bl+Fg), -Bh/2, 60*(Bh+Fg) ]) wall(2.5,1, 0, 0, 0);
translate([ 16.5*(Bl+Fg), -Bh, 0]) wall(1.5,50, 0,0, 0); // Ecke Rechts

// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 53, 0); // durchgehende Reihe
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 53, 0); // durchgehende Reihe
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 16.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 15*(Bw+Fg), 0, 19*(Bh+Fg) ]) basement( 0, 10, 0);
translate([ 15*(Bw+Fg)-2*Fg, Fg, 19*(Bh+Fg)-Fg ]) cube([ Bw*8, Bl-2*Fg, Bw+Fg ]);

// erste Ziegelreiche hochkant
translate([ 0, 0, -10 ]) {
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 53, 0); // durchgehende Reihe
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 53, 0); // durchgehende Reihe
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 16.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 15*(Bw+Fg), 0, 19*(Bh+Fg) ]) basement( 0, 10, 0);
translate([ 15*(Bw+Fg)-2*Fg, Fg, 19*(Bh+Fg)-Fg ]) cube([ Bw*8, Bl-2*Fg, Bw+Fg ]);
}}
// Dach abschneiden
translate([0, -8, 357]) 
rotate(a=-35,v=[0,1,0])
cube([300, 32, 40]);

translate([205, -8, 528]) 
rotate(a=35,v=[0,1,0])
cube([300, 32, 40]);

translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(12, 120, 0.7, 2);
}
translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(12, 120, 0.7, 2);
}
translate([ Bl, 177, 149 ]) cube([ 5, 83, 4 ]);
translate([ Bl, 177, 190 ]) cube([ 5, 83, 10 ]);
translate([ Bl, 178, 148 ]) cube([ 5, 6, 44 ]);
translate([ Bl, 253.5, 148 ]) cube([ 5, 6, 44 ]);


// Rueckseite //////////////////////////////////////////////////////////////
translate([ (Bl+Fg)*47+Bl, (Bl+Fg)*17+Bw+Fg, 0]) rotate(a=180,v=[0,0,1]) 
{
difference() { union() {
// Fensterbank
translate([ 329, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 329, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 334, Bw, 84 ]) cube([ 68, 8, 3 ]);
translate([ 333, Bw, 83 ]) cube([ 5, 8, 68 ]);
translate([ 397, Bw, 83 ]) cube([ 5, 8, 68 ]);

translate([ 335, Bw, 104 ]) cube([ 68, 8, 4 ]);
translate([ 335, Bw, 124 ]) cube([ 68, 8, 4 ]);

translate([ 354.5, Bw, 83 ]) cube([ 4, 8, 68 ]);
translate([ 375.5, Bw, 83 ]) cube([ 4, 8, 68 ]);

translate([ 355, Bw, 142 ]) cube([ 24, 8, 3 ]);
translate([ 375, Bw, 143 ]) rotate([0,13.5,0]) cube([ 24, 8, 3 ]);
translate([ 359, Bw, 143 ]) mirror(0,1,0)  rotate([0,13.5,0]) cube([ 24, 8, 3 ]);

// Fensterbank
translate([ 561, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 561, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 567, Bw, 84 ]) cube([ 68, 8, 3 ]);
translate([ 564, Bw, 83 ]) cube([ 5, 8, 68 ]);
translate([ 629, Bw, 83 ]) cube([ 5, 8, 68 ]);

translate([ 567, Bw, 104 ]) cube([ 68, 8, 4 ]);
translate([ 567, Bw, 124 ]) cube([ 68, 8, 4 ]);

translate([ 586.5, Bw, 83 ]) cube([ 4, 8, 68 ]);
translate([ 607.5, Bw, 83 ]) cube([ 4, 8, 68 ]);

translate([ 587, Bw, 142 ]) cube([ 24, 8, 3 ]);
translate([ 607, Bw, 143 ]) rotate([0,13.5,0]) cube([ 24, 8, 3 ]);
translate([ 591, Bw, 143 ]) mirror(0,1,0)  rotate([0,13.5,0]) cube([ 24, 8, 3 ]);

// Fensterbank
translate([ 792, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 792, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 798, Bw, 84 ]) cube([ 68, 8, 3 ]);
translate([ 795, Bw, 83 ]) cube([ 5, 8, 68 ]);
translate([ 860, Bw, 83 ]) cube([ 5, 8, 68 ]);

translate([ 798, Bw, 104 ]) cube([ 68, 8, 4 ]);
translate([ 798, Bw, 124 ]) cube([ 68, 8, 4 ]);

translate([ 817.5, Bw, 83 ]) cube([ 4, 8, 68 ]);
translate([ 838.5, Bw, 83 ]) cube([ 4, 8, 68 ]);

translate([ 818, Bw, 142 ]) cube([ 24, 8, 3 ]);
translate([ 838, Bw, 143 ]) rotate([0,13.5,0]) cube([ 24, 8, 3 ]);
translate([ 822, Bw, 143 ]) mirror(0,1,0)  rotate([0,13.5,0]) cube([ 24, 8, 3 ]);

translate([ 11*Bl+Fg, -Bh/2, 33*(Bh+Fg) ]) reiter( 37, -4,0, 0.5 );

translate([ 9.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 1. Saeule

translate([ 10.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,11, 0,0, 4);
translate([ 16*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,11, 0,0, 4);
translate([ 10.5*(Bl+Fg), 0, 0]) wall(9.1,10, 0,0, 0);
translate([ 10.5*(Bl+Fg), 0, 21*(Bh+Fg)]) wall(9.1, 14, 0,0, 1);

translate([ 10.5*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1,13, 0,0, 0); // Oben Halblinks
translate([ 18.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 2. Saeule

translate([ 19.25*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.5,11, 0,0, 4);
translate([ 25.25*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(4 ,11, 0,0, 4);
translate([ 19.25*(Bl+Fg), 0, 0]) wall(10,10, 0,0, 0);
translate([ 19.25*(Bl+Fg), 0, 21*(Bh+Fg)]) wall(10,14, 0,0, 1);

translate([ 19.25*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(10,13, 0,0, 0); // Oben Mitte
translate([ 28*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 3. Saeule

translate([ 29*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,11, 0,0, 4);
translate([ 34.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,11, 0,0, 4);
translate([ 29*(Bl+Fg), 0, 0]) wall(9.1, 10, 0,0, 0);
translate([ 29*(Bl+Fg), 0, 21*(Bh+Fg)]) wall(9.1, 14, 0,0, 1);

translate([ 29*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1, 13, 0,0, 0); // Oben Halbrechts
translate([ 37*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 4. Saeule

translate([ 38*(Bl+Fg), 0, 0]) wall(9,33, 0,0, 2);
translate([ 38*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9, 13, 0,0, 0); // Oben Rechts
translate([ 46.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Rechts

// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 156, 0); // durchgehene Reihe
translate([ 1.25*(Bl+Fg), -Bh/2, -Bw-Fg ]) basement( 0, 156, 0); // durchgehene Reihe
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 18.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 28*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 46.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);

translate([ 0, 0, -10 ]) {
// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 156, 0); // durchgehene Reihe
translate([ 1.25*(Bl+Fg), -Bh/2, -Bw-Fg ]) basement( 0, 156, 0); // durchgehene Reihe
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 18.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 28*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 46.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}}
translate([23, -15, -25]) cube([250, 48, 390]); // freischneiden

translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.7, 2);
translate([ 22.75*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.7, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.7, 2);
}
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.7, 2);
translate([ 22.75*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.7, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.7, 2);
}


// Seite Mitte /////////////////////////////////////////////////////////////
translate([ 297.1, 0.1, 0]) 
{
translate([ Bw/2, (Bl+Fg)*18-Bw/2-Fg, 0]) rotate(a=-90,v=[0,0,1]) 
{
difference() { union() {
// Ausfuellen
translate([ 0.5*(Bl+Fg), 0, 0*(Bh+Fg)]) wall(7,29, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 0*(Bh+Fg)]) wall(7,29, 0,0, 1);
translate([ 0.5*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(17, 4, 0,0, 0);
translate([ 0.5*(Bl+Fg), -Bh/2, 33*(Bh+Fg) ]) reiter( 17, -4, 4,0.25, 1 );

translate([ 0.5*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(17, 6, 0,0, 1);
translate([ 0.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(7,10, 0,0, 1);
translate([ 8.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(1,10, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(7,10, 0,0, 1);

translate([ 1.25*(Bl+Fg), 0, 52*(Bh+Fg) ]) wall(15.5,3, 0,0, 1);
translate([ 2.25*(Bl+Fg), 0, 55*(Bh+Fg) ]) wall(13.5,3, 0,0, 0);
translate([ 3.5*(Bl+Fg), 0, 58*(Bh+Fg) ]) wall(11,3, 0,0, 1);
translate([ 4.5*(Bl+Fg), 0, 61*(Bh+Fg) ]) wall(9,3, 0,0, 0);
translate([ 5.5*(Bl+Fg), 0, 64*(Bh+Fg) ]) wall(7,3, 0,0, 1);
translate([ 6.5*(Bl+Fg), 0, 67*(Bh+Fg) ]) wall(5,3, 0,0, 0);
translate([ 7.5*(Bl+Fg), 0, 70*(Bh+Fg) ]) wall(3,3, 0,0, 1);
// erste Ziegelreiche hochkant
translate([ 1*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
translate([ 1*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
translate([ 0, 0, -10 ]) {
// erste Ziegelreiche hochkant
translate([ 1*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
translate([ 1*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
}}
// Dach abschneiden
translate([0, -8, 357]) 
rotate(a=-35,v=[0,1,0])
cube([300, 32, 40]);

translate([205, -8, 528]) 
rotate(a=35,v=[0,1,0])
cube([300, 32, 40]);

translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(12, 120, 0.7, 2);
}
translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(12, 120, 0.7, 2);
}}


// Seite Mitte /////////////////////////////////////////////////////////////
translate([ 867.1, 0.1, 0]) 
{
translate([ Bw/2, (Bl+Fg)*18-Bw/2-Fg, 0]) rotate(a=-90,v=[0,0,1]) 
{
difference() { union() {
// Ausfuellen
translate([ 0.5*(Bl+Fg), 0, 0*(Bh+Fg)]) wall(7,29, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 0*(Bh+Fg)]) wall(7,29, 0,0, 1);
translate([ 0.5*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(17, 4, 0,0, 0);
translate([ 0.5*(Bl+Fg), -Bh/2, 33*(Bh+Fg) ]) reiter( 17, -4, 4,0.25, 1 );

translate([ 0.5*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(17, 6, 0,0, 1);
translate([ 0.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(7,10, 0,0, 1);
translate([ 8.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(1,10, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(7,10, 0,0, 1);

translate([ 1.25*(Bl+Fg), 0, 52*(Bh+Fg) ]) wall(15.5,3, 0,0, 1);
translate([ 2.25*(Bl+Fg), 0, 55*(Bh+Fg) ]) wall(13.5,3, 0,0, 0);
translate([ 3.5*(Bl+Fg), 0, 58*(Bh+Fg) ]) wall(11,3, 0,0, 1);
translate([ 4.5*(Bl+Fg), 0, 61*(Bh+Fg) ]) wall(9,3, 0,0, 0);
translate([ 5.5*(Bl+Fg), 0, 64*(Bh+Fg) ]) wall(7,3, 0,0, 1);
translate([ 6.5*(Bl+Fg), 0, 67*(Bh+Fg) ]) wall(5,3, 0,0, 0);
translate([ 7.5*(Bl+Fg), 0, 70*(Bh+Fg) ]) wall(3,3, 0,0, 1);

// erste Ziegelreiche hochkant
translate([ 1*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
translate([ 1*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe

translate([ 0, 0, -10 ]) {
// erste Ziegelreiche hochkant
translate([ 1*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
translate([ 1*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 55, 0); // durchgehende Reihe
}}

// Dach abschneiden
translate([0, -8, 357]) 
rotate(a=-35,v=[0,1,0])
cube([300, 32, 40]);

translate([205, -8, 528]) 
rotate(a=35,v=[0,1,0])
cube([300, 32, 40]);

translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(12, 120, 0.7, 2);
}
translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(12, 120, 0.7, 2);
}}


// Support /////////////////////////////////////////////////////////////
difference() { union() {
translate([ -5,-10, -60 ]) cube([ 930, 40, 10 ]); // Boden
translate([ 200,-10, -60 ]) cube([ 336, 40, 10 ]); // Boden
translate([ 662,-10, -60 ]) cube([ 264, 40, 10 ]); // Boden
translate([ -5, 408, -60 ]) cube([ 930, 40, 10 ]); // Boden
translate([ -5,-10, -60 ]) cube([ 40, 458, 10 ]); // Boden

translate([ 292, 33, -60 ]) cube([ 40, 372, 10 ]); // Boden
translate([ 863, 33, -60 ]) cube([ 40, 372, 10 ]); // Boden

translate([ 70, 12, -60 ]) cube([ 130, 4, 40 ]); // Tuer
translate([ 535, 12, -60 ]) cube([ 130, 4, 40 ]); // Tuer

translate([ 0, -5, -52 ]) cube([ 74, 8, 30 ]); // Boden
translate([ 20, 14, -52 ]) cube([ 54, 8, 30 ]); // Boden

translate([ 200, -5, -52 ]) cube([ 336, 8, 30 ]); // Boden
translate([ 200, 14, -52 ]) cube([ 336, 8, 30 ]); // Boden

translate([ 662, -5, -52 ]) cube([ 264, 8, 30 ]); // Boden
translate([ 662, 14, -52 ]) cube([ 264, 8, 30 ]); // Boden

translate([ 20, 416, -52 ]) cube([ 905, 8, 30 ]); // Boden
translate([ 0, 432, -52 ]) cube([ 925, 8, 30 ]); // Boden

translate([ 20, 15, -52 ]) cube([ 8, 408, 30 ]); // Boden
translate([ 0, -5, -52 ]) cube([ 8, 438, 30 ]); // Boden

translate([ 300, 33, -52 ]) cube([ 8, 372, 30 ]); // Boden
translate([ 318, 33, -52 ]) cube([ 8, 372, 30 ]); // Boden

translate([ 880, 33, -52 ]) cube([ 8, 372, 30 ]); // Boden
//translate([ 900, 33, -52 ]) cube([ 8, 372, 30 ]); // Boden
}
for (i = [ 0 : 20 : 900 ]) translate([7+i, -10,-23]) rotate(a=45,v=[0,1,0]) cube([10, 455, 10]);
for (i = [ 40 : 20 : 260 ])  translate([ 8+i, -10, -50 ]) cube([12, 470, 27]); // Trenner
for (i = [ 340 : 20 : 840 ])  translate([ 8+i, -10, -50 ]) cube([12, 470, 27]); // Trenner
for (i = [ 900 : 20 : 900 ])  translate([ 8+i, -10, -50 ]) cube([12, 470, 27]); // Trenner

for (i = [ 0 : 20 : 420 ]) translate([ -5, 8+i,-30]) rotate(a=45,v=[1,0,0]) cube([940, 10, 10]);
for (i = [ 40 : 20 : 380 ])  translate([ -5, 2+i, -50 ]) cube([950, 12, 27]); // Trenner

translate([ 43, 402, -65 ]) rotate(a=135,v=[0,0,1]) cube([70, 4, 45]); // Trenner
translate([ -4, -12, -65 ]) rotate(a=45,v=[0,0,1]) cube([70, 4, 45]); // Trenner
}

/*
// Rechte Haelfte #########################################################################

// Front ///////////////////////////////////////////////////////////////////
{
difference() { union() {
translate([ 996, 12, -22 ]) cube([ 130, 10, 225 ]); // Tuer
//translate([ 1174, 176, 50 ]) cube([ 8, 86, 150 ]); // Fenster

translate([ 37*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 4. Saeule
translate([ 37*(Bl+Fg), Bw, 0]) wall(1.5,49, 0,0, 1); // 4. Saeule
translate([ 36*(Bl+Fg), Bl, 0]) wallhalf(1.5,49, 0,0, 1); // 4. Saeule

translate([ 38*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 2);
translate([ 38*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(9, 4, 0,0, 1);
translate([ 45*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 2);
translate([ 38*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9, 13, 0,0, 0); // Oben Rechts
translate([ 46.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Rechts
translate([ 41*Bl+Fg, -Bh/2, 33*(Bh+Fg) ]) reiter( 10, -4,0, 0.2 ); // Reiter
// erste Ziegelreiche hochkant
translate([ 26*(Bl+Fg)+Bw+Fg, 0, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts innen
translate([ 26*(Bl+Fg)+Bw+Fg, -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts 
translate([ 45*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 6, 0); // Rechts innen
translate([ 45*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 6, 0); // Rechts 
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 46.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 0, 0, -10 ]) 
{
translate([ 26*(Bl+Fg)+Bw+Fg, 0, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts innen
translate([ 26*(Bl+Fg)+Bw+Fg, -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts 
translate([ 45*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 6, 0); // Rechts innen
translate([ 45*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 6, 0); // Rechts 
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 46.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}}
translate([ 40*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(19, 180, 0.52, 2);
translate([660, -11, -25]) cube([265, 48, 24]); // freischneiden
}
translate([ 40*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(19, 180, 0.52, 2);
}


// Seite Rechts ////////////////////////////////////////////////////////////

translate([ (Bl+Fg)*47+Bw+Bh+Fg, -Bw/2, 0]) rotate(a=90,v=[0,0,1]) 
{
difference() { union() {
translate([ 0, -Bh, 0]) wall(1.5,50, 0,0, 0); // Ecke Links
// Fensterbank
translate([ 180, -10, 50 ]) rotate([3,0,0]) cube([ 88, 35, 11 ]);
translate([ 180, 0, 48 ]) cube([ 88, 21, 11 ]);
// Ausfuellen
translate([ 1.25*(Bl+Fg), -Bw/2, 0]) wall(15.5, 7, 0,0, 1); // Mitte Unten
translate([ 1.25*(Bl+Fg), 0, 7*(Bh+Fg)]) wall(6.25,22, 0,0, 0); // Mitte Links
translate([ 10.5*(Bl+Fg), 0, 7*(Bh+Fg)]) wall(6.25,22, 0,0, 0); // Mitte Rechts
translate([ 1.25*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(15.5, 4, 0,0, 0);
translate([ 1.25*(Bl+Fg), -Bh/2, 33*(Bh+Fg) ]) reiter( 15.5, -4, 4,0.25, 1 );

translate([ 1.25*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(15.5, 6, 0,0, 1);
translate([ 1.25*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(6.25,10, 0,0, 1);
translate([ 8.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(1,10, 0,0, 1);
translate([ 10.5*(Bl+Fg), 0, 42*(Bh+Fg) ]) wall(6.25,10, 0,0, 1);

translate([ 1.25*(Bl+Fg), 0, 52*(Bh+Fg) ]) wall(15.5,3, 0,0, 1);
translate([ 2.25*(Bl+Fg), 0, 55*(Bh+Fg) ]) wall(13.5,3, 0,0, 0);
translate([ 3.5*(Bl+Fg), 0, 58*(Bh+Fg) ]) wall(11,3, 0,0, 1);
translate([ 4.5*(Bl+Fg), 0, 61*(Bh+Fg) ]) wall(9,3, 0,0, 0);
translate([ 5.5*(Bl+Fg), 0, 64*(Bh+Fg) ]) wall(7,3, 0,0, 1);
translate([ 6.5*(Bl+Fg), 0, 67*(Bh+Fg) ]) wall(5,3, 0,0, 0);
translate([ 7.5*(Bl+Fg), 0, 70*(Bh+Fg) ]) wall(3,3, 0,0, 1);
//  0.125   0.25   0.375   0.5   0.625   0.75   0.875
// Oben Links
translate([ 1*(Bl+Fg),   -Bh, 43*(Bh+Fg) ]) wall(1.625,3, 0, 0, 1);
translate([ 1*(Bl+Fg),   -Bh, 46*(Bh+Fg) ]) wall(2.75 ,3, 0, 0, 0);
translate([ 0.5*(Bl+Fg), -Bh, 49*(Bh+Fg) ]) wall(4.375,3, 0, 0, 1);
translate([ 1*(Bl+Fg), -Bh, 52*(Bh+Fg) ]) wall(5,3, 0, 0, 0);
translate([ 2*(Bl+Fg), -Bh, 55*(Bh+Fg) ]) wall(5.125,3, 0, 0, 1);
translate([ 3.5*(Bl+Fg), -Bh, 58*(Bh+Fg) ]) wall(4.75,3, 0, 0, 0);

translate([ 1.125*(Bl+Fg), -Bh/2, 42*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 2.25*(Bl+Fg),  -Bh/2, 45*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 3.375*(Bl+Fg), -Bh/2, 48*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 4.5*(Bl+Fg),   -Bh/2, 51*(Bh+Fg) ]) wall(1.5,1, 0, 0, 1);
translate([ 5.625*(Bl+Fg), -Bh/2, 54*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 6.75*(Bl+Fg),  -Bh/2, 57*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
// Oben Rechts
translate([ 9.75*(Bl+Fg),   -Bh, 58*(Bh+Fg) ]) wall(4.75,3, 0, 0, 0);
translate([ 10.875*(Bl+Fg), -Bh, 55*(Bh+Fg) ]) wall(5.125,3, 0, 0, 1);
translate([ 12*(Bl+Fg),     -Bh, 52*(Bh+Fg) ]) wall(5,3, 0, 0, 1);
translate([ 13.125*(Bl+Fg), -Bh, 49*(Bh+Fg) ]) wall(4.375,3, 0, 0, 1);
translate([ 14.25*(Bl+Fg),  -Bh, 46*(Bh+Fg) ]) wall(2.75,3, 0, 0, 1);
translate([ 15.375*(Bl+Fg), -Bh, 43*(Bh+Fg) ]) wall(1.625,3, 0, 0, 1);

translate([ 9.75*(Bl+Fg),   -Bh/2, 57*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 10.875*(Bl+Fg), -Bh/2, 54*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 12*(Bl+Fg),     -Bh/2, 51*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 13.125*(Bl+Fg), -Bh/2, 48*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 14.25*(Bl+Fg),  -Bh/2, 45*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
translate([ 15.375*(Bl+Fg), -Bh/2, 42*(Bh+Fg) ]) wall(1.5,1, 0, 0, 0);
// Spitze
translate([ 4.5*(Bl+Fg), -Bh, 61*(Bh+Fg) ]) wall(9,3, 0, 0, 1);
translate([ 5.5*(Bl+Fg), -Bh, 64*(Bh+Fg) ]) wall(7,3, 0, 0, 0);
translate([ 6.5*(Bl+Fg), -Bh, 67*(Bh+Fg) ]) wall(5,3, 0, 0, 1);
translate([ 7.5*(Bl+Fg), -Bh, 70*(Bh+Fg) ]) wall(3,3, 0, 0, 0);
// zurueckgesetzt Spitze
translate([ 8*(Bl+Fg), -Bh/2, 60*(Bh+Fg) ]) wall(2.5,1, 0, 0, 0);
translate([ 16.5*(Bl+Fg), -Bh, 0]) wall(1.5,50, 0,0, 0); // Ecke Rechts
// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 53, 0);
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 53, 0);
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 16.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 0, 0, -10 ]) 
{
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 53, 0);
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 53, 0);
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 16.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}}
// Dach abschneiden
translate([0, -8, 359]) 
rotate(a=-35,v=[0,1,0])
cube([300, 32, 40]);

translate([205, -8, 527]) 
rotate(a=35,v=[0,1,0])
cube([300, 32, 40]);

translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(12, 120, 0.7, 2);
}
translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(12, 120, 0.7, 2);
}


// Rueckseite //////////////////////////////////////////////////////////////
difference() { union() {
translate([ (Bl+Fg)*47+Bl, (Bl+Fg)*17+Bw+Fg, 0]) rotate(a=180,v=[0,0,1]) 
{
translate([ 0, -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Links
translate([ Bl+Fg, -Bh/2, 33*(Bh+Fg) ]) reiter( 9, -4,0, 0.7 );
translate([ 1*(Bl+Fg), 0, 0]) wall(9.6, 33, 0,0, 2);
translate([ 1*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.6, 13, 0,0, 0); // Oben Links
translate([ 9.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 1. Saeule
translate([ 10*(Bl+Fg), Bw, 0]) wall(1,49, 0,0, 1); // 1. Saeule
translate([ 10.5*(Bl+Fg), Bl, 0]) wallhalf(1.5,49, 0,0, 1); // 4. Saeule
// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 33, 0); // durchgehene Reihe
translate([ 1.25*(Bl+Fg), -Bh/2, -Bw-Fg ]) basement( 0, 33, 0); // durchgehene Reihe
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 0, 0, -10 ]) {
// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 33, 0); // durchgehene Reihe
translate([ 1.25*(Bl+Fg), -Bh/2, -Bw-Fg ]) basement( 0, 33, 0); // durchgehene Reihe
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}}}
translate([915, 400, -30]) cube([10, 50, 28]); // freischneiden
}


// Schornstein /////////////////////////////////////////////////////////////
difference() { union() {
translate([ 940, 380, -3*(Bh+Fg) ]) 
{
translate([ 0, 0, 0]) wallhalf(2,73, 0,0, 0);
translate([ Bw, 0, 0]) rotate(a=[0,0,90]) wallhalf(2,73, 0,0, 1);
translate([ 0, Bl+Fg+Bw+Fg, 0]) wallhalf(2,73, 0,0, 0);
translate([ Bw+Bl+Fg+Bw+Fg, 0, 0]) rotate(a=[0,0,90]) wallhalf(2,73, 0,0, 1);
}}
translate([ 940, 380, -42.5 ]) cube([ 50, 50, 20 ]); // Boden
}


// Fenster /////////////////////////////////////////////////////////////////
translate([1178, 178, 62]) cube([6, 82, 12]); // Unten
translate([1183, 182, 67]) cube([6, 73.5, 4]); // Unten
translate([1178, 178, 150]) cube([6, 82, 10]); // Oben
translate([1180, 178, 153]) cube([6, 82, 4]); // Oben
translate([1178, 213.75, 65]) cube([6, 10, 90]); // Mitte
translate([1180, 216.75, 72]) cube([6, 4, 80]); // Mitte
translate([1178, 178, 65]) cube([6, 7, 90]); // Links
translate([1180, 178, 67]) cube([6, 4, 86]); // Links
translate([1178, 251.5, 65]) cube([6, 7, 90]); // Rechts
translate([1180, 255.5, 67]) cube([6, 4, 86]); // Rechts
translate([1178, 178, 160]) cube([6, 5, 35]); // Oberfenster Links
translate([1178, 254.5, 160]) cube([6, 5, 35]); // Oberfenster Rechts
difference() {
translate([ 1178, 218.75, 89 ]) rotate(a=[ 0, 90, 0 ]) cylinder(6, r=110, $fn=500 );
union() {
translate([ 1177, 218.75, 89 ]) rotate(a=[ 0, 90, 0 ]) cylinder(8, r=105, $fn=500 );
translate([1181, 218.75, 70]) cube([10, 230, 210], center=true );
}}


// Support /////////////////////////////////////////////////////////////
difference() { union() {
translate([ 900,-10, -60 ]) cube([ 270, 40, 10 ]); // Boden
translate([ 1165,-10, -60 ]) cube([ 40, 458, 10 ]); // Boden
translate([ 925, 380, -60 ]) cube([ 65, 25, 10 ]); // Boden
translate([ 900, 408, -60 ]) cube([ 270, 40, 10 ]); // Boden
translate([ 996, 12, -60 ]) cube([ 130, 4, 40 ]); // Tuer

translate([ 925, -5, -52 ]) cube([ 75, 8, 30 ]); // Boden
translate([ 925, 14, -52 ]) cube([ 75, 8, 30 ]); // Boden
translate([ 1125, -5, -52 ]) cube([ 65, 8, 30 ]); // Boden
translate([ 1125, 14, -52 ]) cube([ 50, 8, 30 ]); // Boden
translate([ 1188, -5, -52 ]) cube([ 8, 443, 30 ]); // Boden
translate([ 1172, 14, -52 ]) cube([ 8, 410, 30 ]); // Boden
translate([ 925, 416, -52 ]) cube([ 255, 8, 30 ]); // Boden
translate([ 925, 430, -52 ]) cube([ 265, 8, 30 ]); // Boden
translate([ 940, 383, -52 ]) cube([ 48, 8, 30 ]); // Boden
}
for (i = [ 0 : 20 : 260 ]) translate([916.5+i, -10,-22.5]) rotate(a=45,v=[0,1,0]) cube([10, 450, 10]);
for (i = [ 0 : 20 : 420 ]) translate([915, 7+i,-30]) rotate(a=45,v=[1,0,0]) cube([290, 10, 10]);
for (i = [ 40 : 20 : 260 ])  translate([ 877.5+i, -10, -50 ]) cube([12, 470, 27]); // Trenner
for (i = [ 40 : 20 : 380 ])  translate([ 900, 1+i, -50 ]) cube([310, 12, 27]); // Trenner
translate([ 1162, 402, -65 ]) rotate(a=45,v=[0,0,1]) cube([70, 4, 45]); // Trenner
translate([ 1210, -12, -65 ]) rotate(a=135,v=[0,0,1]) cube([70, 4, 45]); // Trenner
}
translate([ 942, 382, -60 ]) cube([ 10, 4, 40 ]); // Stuetze Schlot
translate([ 960, 382, -60 ]) cube([ 10, 4, 40 ]); // Stuetze Schlot
translate([ 978, 382, -60 ]) cube([ 10, 4, 40 ]); // Stuetze Schlot
translate([ 900, 406, -60 ]) cube([ 10, 6, 60 ]); // Stuetze
translate([ 900, 25, -60 ]) cube([ 10, 6, 60 ]); // Stuetze


// Dach ###################################################################################

// Support
difference() { union() {
translate([-50, 0, -70]) 
{
translate([-25, 140, 560]) 
rotate(a=-35,v=[1,0,0])
cube([20, 450, 130]);
translate([-25, -69, 306]) 
rotate(a=35,v=[1,0,0])
cube([20, 440, 130]);
}
translate([-30, 0, -3]) 
{
translate([-25, 215, 515]) 
rotate(a=-35,v=[1,0,0])
cube([30, 360, 8]);
translate([-25, -75, 308]) 
rotate(a=35,v=[1,0,0])
cube([30, 360, 8]);
}}
for (i = [ 0 : 20 : 560 ]) translate([-25, -70+i, 300]) rotate(a=45,v=[0,0,1]) cube([10, 10, 225]);
translate([-78, 214, 400]) cube([50, 6, 200]); // Grundplatte teilen
translate([ 0, 0, -14]) // Sollbruchkante
{
translate([-25, 215, 515]) 
rotate(a=-35,v=[1,0,0])
rotate(a=-45,v=[0,1,0])
cube([8, 360, 8]);
translate([-25, -75, 308]) 
rotate(a=35,v=[1,0,0])
rotate(a=-45,v=[0,1,0])
cube([8, 360, 8]);
}}
difference() { union() {
translate([ -22, -70, 315 ]) rotate(a=[26,0,0]) rooftile( 46, 10, 0, 0);
translate([ 1222, 505, 315 ]) rotate(a=[26,0,180]) rooftile( 46, 10, 0, 0);
translate([-25, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([1250, 355, 8]); // Unterfütterung
translate([0,435,0]) 
mirror([0,1,0]) 
translate([-25, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([1250, 355, 8]); // Unterfütterung
}
// Dach abschneiden
rotate(a=-20 ,v=[1,0,0])
translate([600, -190, 43]) 
rotate(a=-45,v=[0,1,0])
cube([300, 200, 300]);
translate([940, 380, 350]) cube([48, 48, 80]); // Schornstein freischneiden
}
// Dachabschluss Links
translate([-25, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([4, 360, 14]);
translate([-25, -69, 306]) 
rotate(a=35,v=[1,0,0])
cube([4, 360, 14]);
// Dachabschluss Rechts
translate([1222, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([4, 360, 14]);
translate([1222, -69, 306]) 
rotate(a=35,v=[1,0,0])
cube([4, 360, 14]);
// First
translate([-22, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([1244, 17, 14]);
translate([-22, 212, 503]) 
rotate(a=35,v=[1,0,0])
cube([1244, 17, 14]);
difference() { union() {
translate([ 805, -80, 315 ]) rotate(a=[26,0,90]) rooftile( 8, 7, 0, 0);
translate([ 395, 139, 315 ]) rotate(a=[26,0,270]) rooftile( 8, 7, 0, 0);
translate([399, -83, 309]) 
rotate(a=-35,v=[0,1,0])
cube([255, 220, 6]);
translate([592, -83, 455]) 
rotate(a=35,v=[0,1,0])
cube([255, 220, 6]);
translate([592, -83, 449]) 
rotate(a=-35,v=[0,1,0])
cube([17, 225, 10]);
translate([595, -83, 458]) 
rotate(a=35,v=[0,1,0])
cube([17, 225, 10]);
}
// Dach abschneiden
translate([403, -89, 255]) 
rotate(a=-35,v=[0,1,0])
rotate(a=39.5,v=[0,0,1])
cube([363, 185, 100]);
translate([793, -89, 255]) 
mirror([ 1, 0, 0 ]) 
rotate(a=-35,v=[0,1,0])
rotate(a=39.5,v=[0,0,1])
cube([363, 185, 100]);
}

// Dachabschluss ///////////////////////////////////////////////////////////
translate([399, -83, 309]) 
rotate(a=-35,v=[0,1,0])
cube([255, 3, 14]);
translate([592, -83, 455]) 
rotate(a=35,v=[0,1,0])
cube([255, 3, 14]);
*/


