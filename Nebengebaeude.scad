include <brick_double.scad>;

// Nebengebaeude Fritzlar

// Front ///////////////////////////////////////////////////////////////////
{
difference() { union() {
// Fensterbank
translate([ 329, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 329, 0, 70 ]) cube([ 78, 21, 11 ]);
translate([ 792, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 792, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 0, -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Links

translate([ 1*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 2);
translate([ 1*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(9.6, 4, 0,0, 1);
translate([ 8*(Bl+Fg), 0, 0]) wall(2.6, 29, 0,0, 2);
translate([ 1*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.6, 13, 0,0, 0); // Oben Links

translate([ 9.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 1. Saeule

translate([ 10.5*(Bl+Fg), 0, 0]) wall(9.1,10, 0,0, 0);
translate([ 10.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,10, 0,0, 4);
translate([ 16*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,10, 0,0, 4);
translate([ 10.5*(Bl+Fg), 0, 20*(Bh+Fg)]) wall(9.1, 13, 0,0, 0);
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
translate([ 29*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,10, 0,0, 4);
translate([ 34.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,10, 0,0, 4);
translate([ 29*(Bl+Fg), 0, 20*(Bh+Fg)]) wall(9.1, 13, 0,0, 0);
translate([ 29*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1,13, 0,0, 0); // Oben Halbrechts

translate([ 37*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 4. Saeule

translate([ 38*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 2);
translate([ 38*(Bl+Fg), 0, 29*(Bh+Fg)]) wall(9, 4, 0,0, 1);
translate([ 45*(Bl+Fg), 0, 0]) wall(2,29, 0,0, 2);
translate([ 38*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9, 13, 0,0, 0); // Oben Rechts

translate([ 46.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Rechts

translate([ Bl+Fg, -Bh/2, 33*(Bh+Fg) ]) reiter( 46, -4,0, 0.5 ); // Reiter

// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 6, 0); // Links innen
translate([ 1.25*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 6, 0); // Links 

translate([ 8*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 46, 0); // Halblinks innen
translate([ 8*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halblinks 

translate([ 26*(Bl+Fg)+Bw+Fg, 0, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts innen
translate([ 26*(Bl+Fg)+Bw+Fg, -Bw/2, -Bw-Fg ]) basement( 0, 46, 0); // Halbrechts 

translate([ 45*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 6, 0); // Rechts innen
translate([ 45*(Bl+Fg), -Bw/2, -Bw-Fg ]) basement( 0, 6, 0); // Rechts 

translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 18.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 28*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 46.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}

translate([ 3*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(19, 180, 0.52, 2);
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.72, 2);
translate([ 21.52*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(20, 180, 0.39, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.72, 2);
translate([ 40*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(19, 180, 0.52, 2);

translate([ 22*(Bl+Fg)-Fg, -Bh, 50*(Bh+Fg) ]) bbcut(16, 130, 0.6, 2);

// Dach abschneiden
translate([460, -8, 360]) 
rotate(a=-35,v=[0,1,0])
cube([180, 32, 70]);

translate([590, -8, 465]) 
rotate(a=35,v=[0,1,0])
cube([180, 32, 70]);


}
translate([ 3*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(19, 180, 0.52, 2);
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.72, 2);
translate([ 21.52*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(20, 180, 0.39, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.72, 2);
translate([ 40*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(19, 180, 0.52, 2);

translate([ 22*(Bl+Fg)-Fg, -Bh, 50*(Bh+Fg) ]) brickbow(16, 130, 0.6, 2);
}
// Front ///////////////////////////////////////////////////////////////////


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
}

// Dach abschneiden
translate([0, -8, 358]) 
rotate(a=-35,v=[0,1,0])
cube([300, 32, 40]);

translate([205, -8, 530]) 
rotate(a=35,v=[0,1,0])
cube([300, 32, 40]);

translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(12, 120, 0.7, 2);
}
translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(12, 120, 0.7, 2);
}
// Seite Links /////////////////////////////////////////////////////////////


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
}

// Dach abschneiden
translate([0, -8, 358]) 
rotate(a=-35,v=[0,1,0])
cube([300, 32, 40]);

translate([205, -8, 530]) 
rotate(a=35,v=[0,1,0])
cube([300, 32, 40]);

translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) bbcut(12, 120, 0.7, 2);
}
translate([ 7.5*(Bl+Fg)-Fg, 0, 26*(Bh+Fg) ]) brickbow(12, 120, 0.7, 2);
}
// Seite Rechts ////////////////////////////////////////////////////////////


// Rueckseite //////////////////////////////////////////////////////////////

translate([ (Bl+Fg)*47+Bl, (Bl+Fg)*17+Bw+Fg, 0]) rotate(a=180,v=[0,0,1]) 
{
difference() { union() {

// Fensterbank
translate([ 329, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 329, 0, 70 ]) cube([ 78, 21, 11 ]);
translate([ 561, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 561, 0, 70 ]) cube([ 78, 21, 11 ]);
translate([ 792, -10, 72 ]) rotate([3,0,0]) cube([ 78, 35, 11 ]);
translate([ 792, 0, 70 ]) cube([ 78, 21, 11 ]);

translate([ 0, -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Links

translate([ Bl+Fg, -Bh/2, 33*(Bh+Fg) ]) reiter( 46, -4,0, 0.5 );
translate([ 1*(Bl+Fg), 0, 0]) wall(9.6, 33, 0,0, 2);

translate([ 1*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.6, 13, 0,0, 0); // Oben Links
translate([ 9.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 1. Saeule

translate([ 10.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,10, 0,0, 4);
translate([ 16*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,10, 0,0, 4);
translate([ 10.5*(Bl+Fg), 0, 0]) wall(9.1,10, 0,0, 0);
translate([ 10.5*(Bl+Fg), 0, 20*(Bh+Fg)]) wall(9.1, 13, 0,0, 0);

translate([ 10.5*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1,13, 0,0, 0); // Oben Halblinks
translate([ 18.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 2. Saeule

translate([ 19.25*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.5,10, 0,0, 4);
translate([ 25.25*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(4 ,10, 0,0, 4);
translate([ 19.25*(Bl+Fg), 0, 0]) wall(10,10, 0,0, 0);
translate([ 19.25*(Bl+Fg), 0, 20*(Bh+Fg)]) wall(10,13, 0,0, 0);

translate([ 19.25*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(10,13, 0,0, 0); // Oben Mitte
translate([ 28*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 3. Saeule

translate([ 29*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3,10, 0,0, 4);
translate([ 34.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.6,10, 0,0, 4);
translate([ 29*(Bl+Fg), 0, 0]) wall(9.1, 10, 0,0, 0);
translate([ 29*(Bl+Fg), 0, 20*(Bh+Fg)]) wall(9.1, 13, 0,0, 0);

translate([ 29*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9.1, 13, 0,0, 0); // Oben Halbrechts
translate([ 37*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // 4. Saeule

translate([ 38*(Bl+Fg), 0, 0]) wall(9,33, 0,0, 2);
translate([ 38*(Bl+Fg), 0, 36*(Bh+Fg)]) wall(9, 13, 0,0, 0); // Oben Rechts
translate([ 46.5*(Bl+Fg), -Bh, 0]) wall(1.5,49, 0,0, 1); // Ecke Rechts

// erste Ziegelreiche hochkant
translate([ 1.25*(Bl+Fg), 0, -Bw-Fg ]) basement( 0, 156, 0); // durchgehene Reihe
translate([ 1.25*(Bl+Fg), -Bh/2, -Bw-Fg ]) basement( 0, 156, 0); // durchgehene Reihe
translate([ -Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 9.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 18.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 28*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 37*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
translate([ 46.5*(Bl+Fg)-Bh/2, -Bw, -Bw-Fg ]) basement( 0, 6, 0);
}
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.7, 2);
translate([ 22.75*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.7, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) bbcut(10, 100, 0.7, 2);
}
translate([ 13.475*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.7, 2);
translate([ 22.75*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.7, 2);
translate([ 31.975*(Bl+Fg), 0, 19*(Bh+Fg) ]) brickbow(10, 100, 0.7, 2);
}
// Rueckseite //////////////////////////////////////////////////////////////


// Dach ////////////////////////////////////////////////////////////////////

difference() { union() {
translate([ -22, -70, 315 ]) rotate(a=[26,0,0]) rooftile( 46, 10, 0, 0);
translate([ 1222, 505, 315 ]) rotate(a=[26,0,180]) rooftile( 46, 10, 0, 0);
}
// Dach abschneiden
rotate(a=-20 ,v=[1,0,0])
translate([600, -190, 43]) 
rotate(a=-45,v=[0,1,0])
cube([300, 200, 300]);

translate([951, 391, 365]) cube([26, 26, 50]); // Schornstein freischneiden
}

// Dachabschluss Links
translate([-25, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([3, 360, 14]);
translate([-25, -69, 306]) 
rotate(a=35,v=[1,0,0])
cube([3, 360, 14]);
// Dachabschluss Rechts
translate([1222, 210, 512]) 
rotate(a=-35,v=[1,0,0])
cube([3, 360, 14]);
translate([1222, -69, 306]) 
rotate(a=35,v=[1,0,0])
cube([3, 360, 14]);
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
// First
translate([592, -83, 449]) 
rotate(a=-35,v=[0,1,0])
cube([17, 230, 10]);
translate([595, -83, 458]) 
rotate(a=35,v=[0,1,0])
cube([17, 230, 10]);
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
// Dach ////////////////////////////////////////////////////////////////////


// Schornstein /////////////////////////////////////////////////////////////
translate([ 940, 380, 380]) 
{
translate([ 0, 0, 0]) wallhalf(2,18, 0,0, 0);
translate([ Bw, 0, 0]) rotate(a=[0,0,90]) wallhalf(2,18, 0,0, 1);
translate([ 0, Bl+Fg+Bw+Fg, 0]) wallhalf(2,18, 0,0, 0);
translate([ Bw+Bl+Fg+Bw+Fg, 0, 0]) rotate(a=[0,0,90]) wallhalf(2,18, 0,0, 1);
}
// Schornstein /////////////////////////////////////////////////////////////


// Dachabschluss ///////////////////////////////////////////////////////////
translate([395, -83, 306]) 
rotate(a=-35,v=[0,1,0])
cube([260, 3, 14]);
translate([592, -83, 455]) 
rotate(a=35,v=[0,1,0])
cube([260, 3, 14]);
// Dachabschluss ///////////////////////////////////////////////////////////
