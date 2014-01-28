include <brick.scad>;


// Fritzlar Empfangsgebaeude, Schuppen
/*
// 1. Haelfte #############################################################################
difference() { union(){
// Hinten +++++++++++++++++++++++
difference() { union(){
translate([ 0, 0, 0 ]) wall(6.5, 36, 0,0,0);
translate([ 0, 0, (Bh+Fg)*36 ]) wall(7.5, 3, 0,0,0);
translate([ 0, 0, (Bh+Fg)*39 ]) wall(10, 3, 0,0,1);
translate([ 16*(Bl+Fg), 0, 0 ]) wall(24.5, 9, 0,0,0);
translate([ 16*(Bl+Fg), 0, (Bh+Fg)*9 ]) wall(8.5, 27, 0,0,1);
translate([ 28*(Bl+Fg), 0, (Bh+Fg)*9 ]) wall(2, 27, 0,0,1);
translate([ 33.5*(Bl+Fg), 0, (Bh+Fg)*9 ]) wall(7, 27, 0,0,1);
translate([ 15*(Bl+Fg), 0, (Bh+Fg)*36 ]) wall(25.5, 3, 0,0,0);
translate([ 12.5*(Bl+Fg), 0, (Bh+Fg)*39 ]) wall(28, 3, 0,0,1);
translate([ 0, 0, (Bh+Fg)*42 ]) wall(40.5, 21, 0,0,0);
// Fensterbank
translate([ 48.5*(Bw+Fg)-Fg, -4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]);
translate([ 59.5*(Bw+Fg)-Fg, -4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]);
translate([ 40*(Bl+Fg)+Bw-Fg, Fg, 37*(Bh+Fg)-Fg ]) cube([Fg*2, Bw*2-Fg, 23*(Bh+Fg)]); // Fuge schliessen
}
translate([ 6.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
translate([ 24.5*(Bl+Fg)-Fg, 0, (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 30*(Bl+Fg)-Fg, 0, (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 40.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
translate([ 40*(Bl+Fg), 0, 38*(Bh+Fg) ]) wallhalf(1,22,1,0,1); //Verzahnung
translate([ 40*(Bl+Fg), Bw+Fg, 38*(Bh+Fg) ]) wallhalf(1,22,1,0,1); //Verzahnung
}
translate([ 6.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );
translate([ 24.5*(Bl+Fg)-Fg, 0, (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 30*(Bl+Fg)-Fg, 0, (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
//translate([ 40.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );

// Gleisseite +++++++++++++++++++++++
difference() { union(){
translate([ 0, 33*(Bl+Fg), 0 ]) wall(6.5, 36, 0,0,0);
translate([ 0, 33*(Bl+Fg), (Bh+Fg)*36 ]) wall(7.5, 3, 0,0,0);
translate([ 0, 33*(Bl+Fg), (Bh+Fg)*39 ]) wall(10, 3, 0,0,1);
translate([ 16*(Bl+Fg), 33*(Bl+Fg), 0 ]) wall(24.5, 9, 0,0,0);
translate([ 16*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*9 ]) wall(8.5, 27, 0,0,1);
translate([ 28*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*9 ]) wall(2, 27, 0,0,1);
translate([ 33.5*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*9 ]) wall(7, 27, 0,0,1);
translate([ 15*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*36 ]) wall(25.5, 3, 0,0,0);
translate([ 12.5*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*39 ]) wall(28, 3, 0,0,1);
translate([ 0, 33*(Bl+Fg), (Bh+Fg)*42 ]) wall(40.5, 21, 0,0,0);
// Fensterbank
translate([ 48.5*(Bw+Fg)-Fg, 33*(Bl+Fg)-2, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]);
translate([ 59.5*(Bw+Fg)-Fg, 33*(Bl+Fg)-2, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]);
translate([ 40*(Bl+Fg)+Bw-Fg, 33*(Bl+Fg)+Fg, 37*(Bh+Fg)-Fg ]) cube([Fg*2, Bw*2-Fg, 26*(Bh+Fg)]); // Fuge schliessen
}
translate([ 6.5*(Bl+Fg)-Fg, 33*(Bl+Fg), 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
translate([ 24.5*(Bl+Fg)-Fg, 33*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 30*(Bl+Fg)-Fg, 33*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 40.5*(Bl+Fg)-Fg, 33*(Bl+Fg), 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
translate([ 40*(Bl+Fg), 33*(Bl+Fg), 38*(Bh+Fg) ]) wallhalf(1,25,1,0,1); //Verzahnung
translate([ 40*(Bl+Fg), 33*(Bl+Fg)+Bw+Fg, 38*(Bh+Fg) ]) wallhalf(1,25,1,0,1); //Verzahnung
}
translate([ 6.5*(Bl+Fg)-Fg, 33*(Bl+Fg), 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );
translate([ 24.5*(Bl+Fg)-Fg, 33*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 30*(Bl+Fg)-Fg, 33*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
//translate([ 40.5*(Bl+Fg)-Fg, 33*(Bl+Fg), 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );

// Front +++++++++++++++++++++++
difference() { union(){
translate([ Bw, 0, 0]) rotate([0,0,90]) wall(34, 9, 0,0,1);
translate([ Bw, 0, (Bh+Fg)*9]) rotate([0,0,90]) wall(6.5, 29, 0,0,0);
translate([ Bw, 10*(Bl+Fg), (Bh+Fg)*9]) rotate([0,0,90]) wall( 2, 29, 0,0,0);
translate([ Bw, 15.5*(Bl+Fg), (Bh+Fg)*9]) rotate([0,0,90]) wall( 3, 29, 0,0,0);
translate([ Bw, 22*(Bl+Fg), (Bh+Fg)*9]) rotate([0,0,90]) wall( 2, 29, 0,0,0);
translate([ Bw, 27.5*(Bl+Fg), (Bh+Fg)*9]) rotate([0,0,90]) wall( 6.5, 29, 0,0,0);
translate([ Bw, 0, (Bh+Fg)*37]) rotate([0,0,90]) wall( 34, 26, 0,0,0);
// Fensterbank
translate([ -17, 12.5*(Bw+Fg)-Fg-0.1, (Bh+Fg)*8]) cube([30, 8*(Bw+Fg)+Fg,10]);
translate([ -17, 23.5*(Bw+Fg)-Fg-0.1, (Bh+Fg)*8]) cube([30, 8*(Bw+Fg)+Fg,10]);
translate([ -17, 36.5*(Bw+Fg)-Fg-0.1, (Bh+Fg)*8]) cube([30, 8*(Bw+Fg)+Fg,10]);
translate([ -17, 47.5*(Bw+Fg)-Fg-0.1, (Bh+Fg)*8]) cube([30, 8*(Bw+Fg)+Fg,10]);
}
translate([ Bw, 6.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 13, 120, 0.95, 2 );
translate([ Bw, 12*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 13, 120, 0.95, 2 );
translate([ Bw, 18.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 13, 120, 0.95, 2 );
translate([ Bw, 24*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 13, 120, 0.95, 2 );
}
translate([ Bw, 6.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 13, 120, 0.95, 2 );
translate([ Bw, 12*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 13, 120, 0.95, 2 );
translate([ Bw, 18.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 13, 120, 0.95, 2 );
translate([ Bw, 24*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 13, 120, 0.95, 2 );


// Traeger mit Doppelbogen
difference() { union(){
translate([ 39.5*(Bl+Fg), Bw+Fg, 48*(Bh+Fg) ]) rotate([0,0,90]) wall(33, 15, 0,0,0);
translate([ 39.5*(Bl+Fg), Bw+Fg, 45*(Bh+Fg) ]) rotate([0,0,90]) wall(5, 3, 0,0,1);
translate([ 39.5*(Bl+Fg), Bw+Fg, 41*(Bh+Fg) ]) rotate([0,0,90]) wall(3, 4, 0,0,1);
translate([ 39.5*(Bl+Fg), Bw+Fg, 37*(Bh+Fg) ]) rotate([0,0,90]) wall(1.5, 4, 0,0,1);
translate([ 39.5*(Bl+Fg), 11.5*(Bl+Fg), 45*(Bh+Fg) ]) rotate([0,0,90]) wall(11, 3, 0,0,1);
translate([ 39.5*(Bl+Fg), 13.5*(Bl+Fg), 41*(Bh+Fg) ]) rotate([0,0,90]) wall(7, 4, 0,0,1);
translate([ 39.5*(Bl+Fg), 15*(Bl+Fg), 37*(Bh+Fg) ]) rotate([0,0,90]) wall(4, 4, 0,0,1);
translate([ 39.5*(Bl+Fg), 28.5*(Bl+Fg), 45*(Bh+Fg) ]) rotate([0,0,90]) wall(5, 3, 0,0,1);
translate([ 39.5*(Bl+Fg), 30.5*(Bl+Fg), 41*(Bh+Fg) ]) rotate([0,0,90]) wall(3, 4, 0,0,1);
translate([ 39.5*(Bl+Fg), 32*(Bl+Fg), 37*(Bh+Fg) ]) rotate([0,0,90]) wall(1.5, 4, 0,0,1);
translate([ 39.25*(Bl+Fg), 16*(Bl+Fg), 0 ]) rotate([0,0,90]) wall(2, 38, 0,0,0);
translate([ 39.75*(Bl+Fg), 16*(Bl+Fg), 0 ]) rotate([0,0,90]) wall(2, 38, 0,0,0);
}
translate([ 39.5*(Bl+Fg), Bl, 33*(Bh+Fg) ]) rotate([0,0,90]) bbcut( 75, 250, 0.12, 2 );
translate([ 39.5*(Bl+Fg), Bl+(Bl+Fg)*17, 33*(Bh+Fg) ]) rotate([0,0,90]) bbcut( 75, 250, 0.12, 2 );
}
translate([ 39.5*(Bl+Fg), Bl, 33*(Bh+Fg) ]) rotate([0,0,90]) brickbow( 75, 250, 0.12, 2 );
translate([ 39.5*(Bl+Fg), Bl+(Bl+Fg)*17, 33*(Bh+Fg) ]) rotate([0,0,90]) brickbow( 75, 250, 0.12, 2 );

difference() { union(){
translate([ 18*(Bl+Fg), Bw+Fg, 48*(Bh+Fg) ]) rotate([0,0,90]) wall(33, 15, 0,0,0);
translate([ 18*(Bl+Fg), Bw+Fg, 45*(Bh+Fg) ]) rotate([0,0,90]) wall(5, 3, 0,0,1);
translate([ 18*(Bl+Fg), Bw+Fg, 41*(Bh+Fg) ]) rotate([0,0,90]) wall(3, 4, 0,0,1);
translate([ 18*(Bl+Fg), Bw+Fg, 37*(Bh+Fg) ]) rotate([0,0,90]) wall(1.5, 4, 0,0,1);
translate([ 18*(Bl+Fg), 11.5*(Bl+Fg), 45*(Bh+Fg) ]) rotate([0,0,90]) wall(11, 3, 0,0,1);
translate([ 18*(Bl+Fg), 13.5*(Bl+Fg), 41*(Bh+Fg) ]) rotate([0,0,90]) wall(7, 4, 0,0,1);
translate([ 18*(Bl+Fg), 15*(Bl+Fg), 37*(Bh+Fg) ]) rotate([0,0,90]) wall(4, 4, 0,0,1);
translate([ 18*(Bl+Fg), 28.5*(Bl+Fg), 45*(Bh+Fg) ]) rotate([0,0,90]) wall(5, 3, 0,0,1);
translate([ 18*(Bl+Fg), 30.5*(Bl+Fg), 41*(Bh+Fg) ]) rotate([0,0,90]) wall(3, 4, 0,0,1);
translate([ 18*(Bl+Fg), 32*(Bl+Fg), 37*(Bh+Fg) ]) rotate([0,0,90]) wall(1.5, 4, 0,0,1);
translate([ 17.75*(Bl+Fg), 16*(Bl+Fg), 0 ]) rotate([0,0,90]) wall(2, 38, 0,0,0);
translate([ 18.25*(Bl+Fg), 16*(Bl+Fg), 0 ]) rotate([0,0,90]) wall(2, 38, 0,0,0);
}
translate([ 18*(Bl+Fg), Bl, 33*(Bh+Fg) ]) rotate([0,0,90]) bbcut( 75, 250, 0.12, 2 );
translate([ 18*(Bl+Fg), Bl+(Bl+Fg)*17, 33*(Bh+Fg) ]) rotate([0,0,90]) bbcut( 75, 250, 0.12, 2 );
}
translate([ 18*(Bl+Fg), Bl, 33*(Bh+Fg) ]) rotate([0,0,90]) brickbow( 75, 250, 0.12, 2 );
translate([ 18*(Bl+Fg), Bl+(Bl+Fg)*17, 33*(Bh+Fg) ]) rotate([0,0,90]) brickbow( 75, 250, 0.12, 2 );

}
//translate([ -30, 0, 59*(Bh+Fg)]) rotate([1.45,0,0]) cube([1050,900,100]); // Dach abschneiden
}



// 2. Haelfte #############################################################################
translate([ 0, 0, 0 ]) difference() { union() {
// Hinten +++++++++++++++++++++++
difference() { union(){
translate([ 50*(Bl+Fg), 0, 0 ]) wall(11.5, 37, 0,0,0);
translate([ 40.5*(Bl+Fg), 0, (Bh+Fg)*36 ]) wall(1, 2, 0,0,0);
translate([ 40.5*(Bl+Fg), 0, (Bh+Fg)*38 ]) wall(2, 2, 0,0,0);
translate([ 48.5*(Bl+Fg), 0, (Bh+Fg)*37 ]) wall(13, 3, 0,0,1);
translate([ 40.5*(Bl+Fg), 0, (Bh+Fg)*40 ]) wall(21, 23, 0,0,0);
translate([ 40*(Bl+Fg)+Bw, Fg, 37*(Bh+Fg)-Fg ]) cube([Fg*2, Bw*2-Fg, 23*(Bh+Fg)]);
translate([ 40*(Bl+Fg), 0, 38*(Bh+Fg) ]) wallhalf(1,22,1,0,1);
translate([ 40*(Bl+Fg), Bw+Fg, 38*(Bh+Fg) ]) wallhalf(1,22,1,0,1);
}
translate([ 40.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
}
translate([ 40.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );

// Abschluss +++++++++++++++++++++++
translate([ 61*(Bl+Fg)+Bw, Bw+Fg, 0]) rotate([0,0,90]) wall(33, 63, 0,0,1);

// Gleisseite +++++++++++++++++++++++
difference() { union(){
translate([ 50*(Bl+Fg),  33*(Bl+Fg), 0 ]) wall(11.5, 37, 0,0,0);
translate([ 40.5*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*36 ]) wall(1, 2, 0,0,0);
translate([ 40.5*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*38 ]) wall(2, 2, 0,0,0);
translate([ 48.5*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*37 ]) wall(13, 3, 0,0,1);
translate([ 40.5*(Bl+Fg), 33*(Bl+Fg), (Bh+Fg)*40 ]) wall(21, 23, 0,0,0);
translate([ 40*(Bl+Fg)+Bw, 33*(Bl+Fg)+Fg, 37*(Bh+Fg)-Fg ]) cube([Fg*2, Bw*2-Fg, 23*(Bh+Fg)]);
translate([ 40*(Bl+Fg), 33*(Bl+Fg), 38*(Bh+Fg) ]) wallhalf(1,25,1,0,1);
translate([ 40*(Bl+Fg), 33*(Bl+Fg)+Bw+Fg, 38*(Bh+Fg) ]) wallhalf(1,25,1,0,1);
}
translate([ 40.5*(Bl+Fg)-Fg, 33*(Bl+Fg), 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
}
translate([ 40.5*(Bl+Fg)-Fg, 33*(Bl+Fg), 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );
}
//translate([ 39*(Bl+Fg), 0, 59*(Bh+Fg)]) rotate([1.45,0,0]) cube([600,900,100]); // Dach abschneiden
}


// Keller ################################################################################
difference(){union(){
translate([ -Bh, 0, -Bw-Fg ]) basement( 0, 210, 0, 3);
translate([ Bw-Bh, 0, -Bw-Fg ]) rotate([0,0,90]) basement( 1, 109, 1, 0.65 );
translate([ -Bh, 33*(Bl+Fg), -Bw-Fg ]) basement( 0, 210, 0, 3);
translate([ 61*(Bl+Fg)+Bw, Bw, -Bw-Fg ]) rotate([0,0,90]) basement( 0, 112, 0, 0.65 );
// Hinten +++++++++++++++++++++++
translate([ -Bw-Fg, 0, -3*(Bh+Fg)-Bw-Fg ]) wall(62, 3, 0,0, 1);
translate([ -Bw-Fg, 0, -8*(Bh+Fg)-Bw-Fg ]) wall(12.5, 9, 0,0, 0);
translate([ 14*(Bl+Fg), 0, -8*(Bh+Fg)-Bw-Fg ]) wall(16.5, 9, 0,0, 0);
translate([ 32.5*(Bl+Fg), 0, -8*(Bh+Fg)-Bw-Fg ]) wall(14, 9, 0,0, 0);
translate([ 48.5*(Bl+Fg), 0, -8*(Bh+Fg)-Bw-Fg ]) wall(13, 9, 0,0, 0);
translate([ -Bw-Fg, 0, -12*(Bh+Fg)-Bw-Fg ]) wall(62, 4, 0,0, 0);
// Gleisseite +++++++++++++++++++++++
translate([ -Bw-Fg, 33*(Bl+Fg), -3*(Bh+Fg)-Bw-Fg ]) wall(62, 3, 0,0, 1);
translate([ -Bw-Fg, 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(12.5, 9, 0,0, 0);
translate([ 14*(Bl+Fg), 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(16.5, 9, 0,0, 0);
translate([ 32.5*(Bl+Fg), 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(14, 9, 0,0, 0);
translate([ 48.5*(Bl+Fg), 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(13, 9, 0,0, 0);
translate([ -Bw-Fg, 33*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(62, 4, 0,0, 0);
// Vorne +++++++++++++++++++++++
translate([ Bh, 0, -2*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(34, 2, 0,0, 1);
translate([ Bh, 0, -4*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(13.5, 2, 0,0, 1);
translate([ Bh, 15.5*(Bl+Fg), -4*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(18.5, 2, 0,0, 1);
translate([ Bw, Bw+Fg, -10*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(13, 6, 0,0, 1);
translate([ Bw, 15.5*(Bl+Fg), -10*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(18, 6, 0,0, 1);
translate([ Bw, Bw+Fg, -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(33, 2, 0,0, 1);
// Abschluss +++++++++++++++++++++++
translate([ 61*(Bl+Fg)+Bw, Bw+Fg, -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(33, 12, 0,0, 1);
}
translate([ 12*(Bl+Fg)-Fg, 0, -7*(Bh+Fg)+Fg ]) bbcut( 9, 80, 0.6, 2 );
translate([ 30.5*(Bl+Fg)-Fg, 0, -7*(Bh+Fg)+Fg ]) bbcut( 9, 80, 0.6, 2 );
translate([ 46.5*(Bl+Fg)-Fg, 0, -7*(Bh+Fg)+Fg ]) bbcut( 9, 80, 0.6, 2 );
translate([ 12*(Bl+Fg)-Fg, 33*(Bl+Fg), -7*(Bh+Fg)+Fg ]) bbcut( 9, 80, 0.6, 2 );
translate([ 30.5*(Bl+Fg)-Fg, 33*(Bl+Fg), -7*(Bh+Fg)+Fg ]) bbcut( 9, 80, 0.6, 2 );
translate([ 46.5*(Bl+Fg)-Fg, 33*(Bl+Fg), -7*(Bh+Fg)+Fg ]) bbcut( 9, 80, 0.6, 2 );
translate([ Bh, 13.5*(Bl+Fg)-Fg, -6*(Bh+Fg)+Fg ]) rotate([0,0,90]) bbcut( 9, 80, 0.6, 1 );
}
translate([ 12*(Bl+Fg)-Fg, 0, -7*(Bh+Fg)+Fg ]) brickbow( 9, 80, 0.6, 2 );
translate([ 30.5*(Bl+Fg)-Fg, 0, -7*(Bh+Fg)+Fg ]) brickbow( 9, 80, 0.6, 2 );
translate([ 46.5*(Bl+Fg)-Fg, 0, -7*(Bh+Fg)+Fg ]) brickbow( 9, 80, 0.6, 2 );
translate([ 12*(Bl+Fg)-Fg, 33*(Bl+Fg), -7*(Bh+Fg)+Fg ]) brickbow( 9, 80, 0.6, 2 );
translate([ 30.5*(Bl+Fg)-Fg, 33*(Bl+Fg), -7*(Bh+Fg)+Fg ]) brickbow( 9, 80, 0.6, 2 );
translate([ 46.5*(Bl+Fg)-Fg, 33*(Bl+Fg), -7*(Bh+Fg)+Fg ]) brickbow( 9, 80, 0.6, 2 );
translate([ Bh, 13.5*(Bl+Fg)-Fg, -6*(Bh+Fg)+Fg ]) rotate([0,0,90]) brickbow( 9, 80, 0.6, 1 );

// Luftschutz +++++++++++++++++++++++
translate([ -6.5*(Bl+Fg), 15.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 19, 0,0, 0);
translate([ -6.5*(Bl+Fg), 25*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(6, 19, 0,0, 0);
translate([ -4.5*(Bl+Fg), 25*(Bl+Fg), 7*(Bh+Fg)-Bw-Fg ]) wallhalf(4, 1, 0,0, 1);
translate([ -4.5*(Bl+Fg), 23.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(4, 19, 0,0, 0);
translate([ -6*(Bl+Fg)-Fg, 15.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(10, 19, 0,0, 1);
translate([ -4.5*(Bl+Fg), 15.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(8.5, 19, 0,0, 1);

translate([ -7*(Bl+Fg), 15.5*(Bl+Fg), 6*(Bh+Fg)-Bw-Fg*2 ]) rotate([0,-5,0]) cube([160,260,Bw]);
translate([ -4.5*(Bl+Fg)-Fg, 15.5*(Bl+Fg), 4.5*(Bh+Fg)-Bw-Fg*2 ]) rotate([0,-5,0]) cube([100,240,Bl]);

translate([ -5.5*(Bl+Fg)+Fg*2, 10*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([Bw*2,140,13*(Bh+Fg)]);
translate([ -5.5*(Bl+Fg)+Fg*2+Bw, 10*(Bl+Fg), -Bh-Fg ]) rotate([-90,0,0]) cylinder(h=140,r=Bw);

translate([ -5.5*(Bl+Fg)+Fg*2, 10*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([120,Bl,2*(Bh+Fg)]);

// Laderampen +++++++++++++++++++++++
// Pfeiler hinten
translate([ 4.8*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 5.3*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 6.3*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 14*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 14.5*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 15.5*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 23.2*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 23.7*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 24.7*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 32.4*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 32.9*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 33.9*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 41.6*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 42.1*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 43.1*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 50.8*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 51.3*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 52.3*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 60*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 60.5*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 61.5*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

// Plateau hinten
translate([ 4.5*(Bl+Fg)-Bh, -5.5*(Bl+Fg), -Bw-Fg ]) cube([57*(Bl+Fg)+Bh, 5*(Bl+Fg)+Bw,Bw]);

// Pfeiler Gleisseite
translate([ 5.5*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 6*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 7*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 13.5*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 14*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 15*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 23.3*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 23.8*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 24.8*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 34.5*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 35*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 36*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 43*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 43.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 44.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 52.5*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 53*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 54*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

//translate([ 62*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
//translate([ 62.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
//translate([ 63.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

// Plateau Gleisseite
translate([ 5*(Bl+Fg), 34*(Bl+Fg), -Bw-Fg ]) cube([56.5*(Bl+Fg), 5*(Bl+Fg)+Bw,Bw]);






// Zwischenschuppen 1. Haelfte #######################################################################
// Hinten +++++++++++++++++++++++
difference(){union(){
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), 0 ]) wall(13.5, 9, 0,0, 0);
translate([ 84.5*(Bl+Fg), 4*(Bl+Fg), 0 ]) wall(8, 37, 0,0, 0);
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), (Bh+Fg)*9 ]) wall(2, 28, 0,0, 1);
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), (Bh+Fg)*37 ]) wall(15, 3, 0,0, 1);
translate([ 83*(Bl+Fg), 4*(Bl+Fg), (Bh+Fg)*37 ]) wall(9.5, 3, 0,0, 1);
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), (Bh+Fg)*40 ]) wall(31, 23, 0,0, 0);
translate([ 67*(Bl+Fg), 4*(Bl+Fg), (Bh+Fg)*9 ]) wall(8, 28, 0,0, 1);
//translate([ 84.5*(Bl+Fg), 4*(Bl+Fg), (Bh+Fg)*9 ]) wall(8, 28, 0,0, 1);
translate([ 63*(Bl+Fg)+2*Fg, 4*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
}
translate([ 63.5*(Bl+Fg)-Fg, 4*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 75*(Bl+Fg)-Fg, 4*(Bl+Fg), 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
}
translate([ 63.5*(Bl+Fg)-Fg, 4*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 75*(Bl+Fg)-Fg, 4*(Bl+Fg), 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );

// Gleisseite +++++++++++++++++++++++
difference(){union(){
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), 0 ]) wall(13.5, 9, 0,0, 0);
translate([ 84.5*(Bl+Fg), 29*(Bl+Fg), 0 ]) wall(8, 37, 0,0, 0);
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(2, 28, 0,0, 1);
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*37 ]) wall(15, 3, 0,0, 1);
translate([ 83*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*37 ]) wall(9.5, 3, 0,0, 1);
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*40 ]) wall(31, 23, 0,0, 0);
translate([ 67*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(8, 28, 0,0, 1);
//translate([ 84.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(8, 28, 0,0, 1);
translate([ 63*(Bl+Fg)+2*Fg, 29*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
}
translate([ 63.5*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 75*(Bl+Fg)-Fg, 29*(Bl+Fg), 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
}
translate([ 63.5*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 75*(Bl+Fg)-Fg, 29*(Bl+Fg), 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );
// Versatz Gleisseite
translate([ 91.5*(Bl+Fg)+Bh, 29.5*(Bl+Fg)+Bh, 0 ]) wallhalf(2, 63, 0,0,1);
translate([ 91.5*(Bl+Fg)+Bh, 29.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg]) wallhalf(2, 12, 0,0,1);

// Keller 
// Hinten
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), -Bw-Fg ]) basement( 0, 106, 0, 3);
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(31, 12, 0,0, 1);
translate([ 91.5*(Bl+Fg)+Bh, 3.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg]) wallhalf(0.5, 13, 0,0,1);
// Gleisseite
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), -Bw-Fg ]) basement( 0, 106, 0, 3);
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(31, 12, 0,0, 1);

// Laderampe Hinten +++++++++++++++++++++++
// Pfeiler
translate([ 61.5*(Bl+Fg), -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 63.5*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 62*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 74*(Bl+Fg)-Bh, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 76*(Bl+Fg)-Bh-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 74.5*(Bl+Fg)-Bh-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 86*(Bl+Fg)-Bh, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 88*(Bl+Fg)-Bh-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 86.5*(Bl+Fg)-Bh-Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
// Plateau
translate([ 61.5*(Bl+Fg), -5.5*(Bl+Fg), -Bw-Fg ]) cube([26*(Bl+Fg)+Bh, 9.5*(Bl+Fg)-Fg,Bw]);
translate([ 87.5*(Bl+Fg), -1.5*(Bl+Fg), -Bw-Fg ]) cube([4*(Bl+Fg)+Bh, 5.5*(Bl+Fg)-Fg,Bw]);
// Treppenstufen (2*Hoehe + Tiefe = 63cm) 18 hoch, 27 tief
translate([ 87.5*(Bl+Fg)+Fg, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+18 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -4.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+36 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -3.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+54 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -2.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+72 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);

// Laderampe Gleisseite +++++++++++++++++++++++
// Pfeiler
translate([ 62*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 62.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 63.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

translate([ 63.5*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 65.5*(Bl+Fg)-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 64*(Bl+Fg)-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 77*(Bl+Fg)-Bh, 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 79*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 77.5*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 90.5*(Bl+Fg)-Bh, 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 92.5*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 91*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 98*(Bl+Fg)-Bh, 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 100*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 98.5*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 109*(Bl+Fg)-Bh, 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 111*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 109.5*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

// Plateau 
translate([ 61.5*(Bl+Fg), 30*(Bl+Fg), -Bw-Fg ]) cube([51*(Bl+Fg), 9.5*(Bl+Fg)-Fg,Bw]);
// Treppenstufen (2*Hoehe + Tiefe = 63cm) 18 hoch, 27 tief
translate([ 116*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([ 35, 9.5*(Bl+Fg)-Fg, 18 ]);
translate([ 115*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+18 ]) cube([ 35, 9.5*(Bl+Fg)-Fg, 18 ]);
translate([ 114*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+36 ]) cube([ 35, 9.5*(Bl+Fg)-Fg, 18 ]);
translate([ 113*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+54 ]) cube([ 35, 9.5*(Bl+Fg)-Fg, 18 ]);
translate([ 112*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+72 ]) cube([ 35, 9.5*(Bl+Fg)-Fg, 18 ]);

translate([ 110*(Bl+Fg)+Bw+Fg*2, 39*(Bl+Fg)-2*Fg, -12*(Bh+Fg)-Bw-Fg*2 ]) cube([ 140, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 39*(Bl+Fg)-2*Fg, -12*(Bh+Fg)-Bw-Fg*2+20 ]) cube([ 115, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 39*(Bl+Fg)-2*Fg, -12*(Bh+Fg)-Bw-Fg*2+36 ]) cube([ 90, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 39*(Bl+Fg)-2*Fg, -12*(Bh+Fg)-Bw-Fg*2+54 ]) cube([ 65, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 39*(Bl+Fg)-2*Fg, -12*(Bh+Fg)-Bw-Fg*2+72 ]) cube([ 40, 0.5*(Bl+Fg)-Fg, 20 ]);

translate([ 110*(Bl+Fg)+Bw+Fg*2, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([ 140, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+20 ]) cube([ 115, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+36 ]) cube([ 90, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+54 ]) cube([ 65, 0.5*(Bl+Fg)-Fg, 20 ]);
translate([ 110*(Bl+Fg)+Bw+Fg*2, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+72 ]) cube([ 40, 0.5*(Bl+Fg)-Fg, 20 ]);






// Zwischenschuppen 2. Haelfte #######################################################################

// Gleisseite +++++++++++++++++++++++
difference(){union(){
translate([ 92.5*(Bl+Fg), 29*(Bl+Fg), 0 ]) wall(11.5, 9, 0,0, 0);
translate([ 92.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(3.5, 28, 0,0, 1);
translate([ 99.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(4.5, 28, 0,0, 1);
translate([ 92.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*37 ]) wall(31.5, 3, 0,0, 1);
translate([ 92.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*40 ]) wall(31.5, 23, 0,0, 0);

translate([ 107.5*(Bl+Fg), 29*(Bl+Fg), 0 ]) wall(16.5, 9, 0,0, 0);
translate([ 107.5*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(3, 28, 0,0, 1);
translate([ 114*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(3.25, 28, 0,0, 1);
translate([ 120.75*(Bl+Fg), 29*(Bl+Fg), (Bh+Fg)*9 ]) wall(3.25, 28, 0,0, 1);

translate([ 95.5*(Bl+Fg)+2*Fg, 29*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
translate([ 110*(Bl+Fg)+2*Fg, 29*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
translate([ 116.75*(Bl+Fg)+2*Fg, 29*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
}
translate([ 96*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 104*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 110.5*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 117.25*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
}
translate([ 96*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 104*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 110.5*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 117.25*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
// Versatz Gleisseite
translate([ 122.5*(Bl+Fg), 29.5*(Bl+Fg)+Bh, 0 ]) wallhalf(1.5, 63, 0,0,1);
translate([ 122.5*(Bl+Fg), 29.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg]) wallhalf(1.5, 12, 0,0,1);
// Keller 
translate([ 92*(Bl+Fg)-Bh, 29*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(32.25, 12, 0,0, 0);
translate([ 92*(Bl+Fg)-Bh, 29*(Bl+Fg), -Bw-Fg ]) basement( 1, 106, 0, 3);
translate([ 122.5*(Bl+Fg), 29.25*(Bl+Fg), -Bw-Fg ]) basement( 0, 5, 0, 1);


// Hinten +++++++++++++++++++++++
difference(){union(){
translate([ 92.5*(Bl+Fg), -6.25*(Bl+Fg), 0 ]) wall(31.5, 9, 0,0, 0);
translate([ 92.5*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*9 ]) wall(3.5, 28, 0,0, 1);
translate([ 99.5*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*9 ]) wall(6, 28, 0,0, 1);
translate([ 92.5*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*37 ]) wall(31.5, 3, 0,0, 1);
translate([ 92.5*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*40 ]) wall(31.5, 23, 0,0, 0);

translate([ 109*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*9 ]) wall(4, 28, 0,0, 1);
translate([ 116.5*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*9 ]) wall(1.5, 28, 0,0, 1);
translate([ 121.5*(Bl+Fg), -6.25*(Bl+Fg), (Bh+Fg)*9 ]) wall(2.5, 28, 0,0, 1);

translate([ 95.5*(Bl+Fg)+2*Fg, -6.25*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
translate([ 105*(Bl+Fg)+2*Fg, -6.25*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
translate([ 112.5*(Bl+Fg)+2*Fg, -6.25*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
translate([ 117.5*(Bl+Fg)+2*Fg, -6.25*(Bl+Fg)-4, (Bh+Fg)*8]) cube([ 8*(Bw+Fg)+Fg, 30, 10]); // Fensterbank
}
translate([ 96*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 105.5*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 113*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
translate([ 118*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) bbcut( 13, 120, 0.95, 2 );
}
translate([ 96*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 105.5*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 113*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 118*(Bl+Fg)-Fg, -6.25*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
// Vorstehend
translate([ 101.5*(Bl+Fg)+Bh, -6.75*(Bl+Fg)+Bh, 0 ]) wallhalf(2, 63, 0,0,1);
translate([ 122*(Bl+Fg), -6.75*(Bl+Fg)+Bh, 0 ]) wallhalf(2, 63, 0,0,1);
// Keller 
translate([ 92*(Bl+Fg)-Bh, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(32.2, 12, 0,0, 0);
translate([ 92*(Bl+Fg)-Bh, -6.5*(Bl+Fg), -Bw-Fg ]) basement( 1, 106, 0, 3);


// Front +++++++++++++++++++++++
difference(){union(){
translate([ 93*(Bl+Fg)-Fg, 2.5*(Bl+Fg), 0]) rotate([0,0,90]) wall(27.5, 38, 0,0,0);
translate([ 93*(Bl+Fg)-Fg, -6*(Bl+Fg), 0]) rotate([0,0,90]) wall(4.5, 38, 0,0,0);
translate([ 93*(Bl+Fg)-Fg, -6*(Bl+Fg), 38*(Bh+Fg)]) rotate([0,0,90]) wall(36, 25, 0,0,0);
}
translate([ 93*(Bl+Fg)-Fg, -1.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 15, 120, 0.9, 2 );
}
translate([ 93*(Bl+Fg)-Fg, -1.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 15, 120, 0.9, 2 );

translate([ 91.5*(Bl+Fg)+Bh, 3.5*(Bl+Fg)+Bh, -1*(Bh+Fg)]) wallhalf(0.5, 64, 0,0,1);

translate([ 92*(Bl+Fg)+Bh, -6.5*(Bl+Fg), 0]) rotate([0,0,90]) wallhalf(2, 44, 0,0,0);
translate([ 92*(Bl+Fg)+Bh+Bh/2, -5*(Bl+Fg),  43*(Bh+Fg)]) rotate([0,0,90]) wallhalf(9, 1, 0,0,1);
translate([ 92*(Bl+Fg)+Bh, -6.5*(Bl+Fg),  44*(Bh+Fg)]) rotate([0,0,90]) wallhalf(10.5, 19, 0,0,0);

translate([ 91.5*(Bl+Fg)+Bh+Fg, -6.5*(Bl+Fg), 0 ]) wallhalf(2, 63, 0,0,1);

translate([ 92.5*(Bl+Fg)+Bh, -5.5*(Bl+Fg), -Bw-Fg ]) rotate([0,0,90]) basement( 0, 120, 0, 0.65 );
translate([ 93*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -Bw-Fg ]) rotate([0,0,90]) basement( 0, 120, 0, 0.65 );
translate([ 92.5*(Bl+Fg)+Bh, -6*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(36, 12, 0,0, 1);


// Abschluss Versatz +++++++++++++++++++++++
difference(){union(){
translate([ 124*(Bl+Fg)-Fg, 2.5*(Bl+Fg), 0]) rotate([0,0,90]) wall(27.5, 38, 0,0,0);
translate([ 124*(Bl+Fg)-Fg, -6*(Bl+Fg), 0]) rotate([0,0,90]) wall(4.5, 38, 0,0,0);
translate([ 124*(Bl+Fg)-Fg, -6*(Bl+Fg), 38*(Bh+Fg)]) rotate([0,0,90]) wall(36, 25, 0,0,0);
}
translate([ 124*(Bl+Fg)-Fg, -1.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 15, 120, 0.9, 2 );
}
translate([ 124*(Bl+Fg)-Fg, -1.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 15, 120, 0.9, 2 );

translate([ 124*(Bl+Fg)-Fg, -5.5*(Bl+Fg), -Bw-Fg ]) rotate([0,0,90]) basement( 0, 120, 0, 0.65 );
translate([ 124*(Bl+Fg)-Fg, -6*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(36, 12, 0,0, 1);



*/



// Empfangsgebaeude hoch ###########################################################################
// Hinten +++++++++++++++++++++++
translate([ 124*(Bl+Fg), -7.3*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wallhalf(2.5, 115, 0,0,1);
translate([ 138*(Bl+Fg), -7.3*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wallhalf(2.5, 115, 0,0,1);
// Ornament
translate([ 126*(Bl+Fg), -7.3*(Bl+Fg)+Bh, 57*(Bh+Fg) ]) wallhalf(12.5,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 126.5*(Bl+Fg)+i, -7.2*(Bl+Fg)+Bh, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 127*(Bl+Fg)+i, -7.1*(Bl+Fg)+Bh, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 126.5*(Bl+Fg)+i, -7.1*(Bl+Fg)+Bh, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

difference(){union(){
translate([ 124*(Bl+Fg), -7*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wall(5.5, 44, 0,0,1);
translate([ 135*(Bl+Fg), -7*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wall(5.5, 44, 0,0,1);
translate([ 124*(Bl+Fg), -7*(Bl+Fg)+Bh, 39*(Bh+Fg) ]) wall(16.5, 19, 0,0,1);

translate([ 124*(Bl+Fg), -7*(Bl+Fg)+Bh, 58*(Bh+Fg) ]) wall(6, 30, 0,0,0);
translate([ 134.5*(Bl+Fg), -7*(Bl+Fg)+Bh, 58*(Bh+Fg) ]) wall(6, 30, 0,0,0);
translate([ 124*(Bl+Fg), -7*(Bl+Fg)+Bh, 88*(Bh+Fg) ]) wall(16.5, 22, 0,0,0);
}
translate([ 129.5*(Bl+Fg)-Fg, -7*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) bbcut( 22, 120, 0.82 );
translate([ 130*(Bl+Fg)-Fg, -7*(Bl+Fg)+Bh, (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
translate([ 132.2*(Bl+Fg), -5.5*(Bl+Fg), 99*(Bh+Fg)-Fg ]) rotate([90,0,0]) cylinder(h=40,r=35+Fg);
}
translate([ 129.5*(Bl+Fg)-Fg, -7*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) brickbow( 22, 120, 0.82, 2 );
translate([ 128.88*(Bl+Fg)-Fg, -7.2*(Bl+Fg)+Bh, (Bh+Fg)*37.7 ]) brickbow( 15, 136, 0.82, 1, Bl, Bh, Bw, 0 ); 
translate([ 130*(Bl+Fg)-Fg, -6.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) brickbow( 18, 100, 0.9, 1, Bw, Bw, Bh, 1 ); 
// Xn, Radius, Zwischenraum, halbe Ziegel, Dicke, Hoehe, Ziegelbreite, Zement
translate([ 130*(Bl+Fg)-Fg, -7*(Bl+Fg)+Bh, (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 130.5*(Bl+Fg)-Fg, -6.5*(Bl+Fg)+Bh, (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 

translate([ 132.2*(Bl+Fg), -5.85*(Bl+Fg), 99*(Bh+Fg)-Fg ]) rotate([90,0,0]) 
brickcircle( 23, 1, 0, 360, 0, 0, Bw, Bh, Bl); 
translate([ 132.2*(Bl+Fg), -5.85*(Bl+Fg), 99*(Bh+Fg)-Fg ]) rotate([90,0,0]) 
brickcircle( 35, 1, 0, 360, 0, 0, Bw, Bh, Bl);
difference(){
translate([ 132.2*(Bl+Fg), -5.85*(Bl+Fg)-Fg, 99*(Bh+Fg)-Fg ]) rotate([90,0,0]) cylinder(h=Bl-Fg*2,r=35+Fg);
translate([ 132.2*(Bl+Fg), -6*(Bl+Fg)+Fg, 99*(Bh+Fg)-Fg ]) rotate([90,0,0]) cylinder(h=Bl-Fg,r=12.7);}

translate([ 129*(Bl+Fg), -6.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1, 50, 0,0,1);
translate([ 134.5*(Bl+Fg), -6.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1, 50, 0,0,1);

translate([ 129.5*(Bl+Fg), -6.5*(Bl+Fg)+Bh, 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 134*(Bl+Fg), -6.5*(Bl+Fg)+Bh, 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);

//Keller
translate([ 124*(Bl+Fg)-Fg, -7*(Bl+Fg)-Fg, -5*(Bh+Fg)-Bw-Fg ]) basement( 1, 15, 0, 4.5);
translate([ 124*(Bl+Fg), -7.25*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg ]) wall(5.5, 7, 0,0,1);

translate([ 135*(Bl+Fg), -7*(Bl+Fg)-Fg, -5*(Bh+Fg)-Bw-Fg ]) basement( 1, 12, 1, -0.5);
translate([ 135*(Bl+Fg), -7.25*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg ]) wall(5.5, 7, 0,0,1);

// Front +++++++++++++++++++++++
translate([ 125*(Bl+Fg)-Fg, -6.5*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) rotate([0,0,90]) wall(40, 115, 0,0,1);
translate([ 124*(Bl+Fg)+Bw/2, 32*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) rotate([0,0,90]) wallhalf(2.5, 115, 0,0,1);
// Keller 
translate([ 125*(Bl+Fg)-Fg, -6.5*(Bl+Fg), -5*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) basement( 0, 138, 0, 1);
translate([ 125*(Bl+Fg)-Fg, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(40.5, 7, 0,0,1);

// Abschluss +++++++++++++++++++++++
translate([ 140.5*(Bl+Fg), -7.3*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) rotate([0,0,90]) wallhalf(2.5, 115, 0,0,0);
translate([ 140.25*(Bl+Fg)-Fg, -6*(Bl+Fg)-Fg, -5*(Bh+Fg) ]) rotate([0,0,90]) wall(6, 115, 0,0,1);
// Ornament
translate([ 140.5*(Bl+Fg), -7*(Bl+Fg)+Bh, 57*(Bh+Fg) ]) rotate([0,0,90]) wallhalf(6.7,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 4*(Bl+Fg) ])
translate([ 140*(Bl+Fg)-0.5, -4.5*(Bl+Fg)-Fg+i, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 4*(Bl+Fg) ])
translate([ 140*(Bl+Fg)-3, -5*(Bl+Fg)-Fg+i, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 4*(Bl+Fg) ])
translate([ 140*(Bl+Fg)-3, -4.5*(Bl+Fg)-Fg+i, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

// Keller 
translate([ 140.5*(Bl+Fg)-Fg, -6.1*(Bl+Fg), -5*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) basement( 0, 20, 0, 3.5);
translate([ 140.5*(Bl+Fg)-Fg, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(6.4, 7, 0,0,1);




// Empfangsgebaeude Mitte ###########################################################################
// Hinten 1. Teil
// Ornament Mitte
translate([ 141.25*(Bl+Fg), -Fg, 57*(Bh+Fg) ]) wallhalf(12.5,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 141.75*(Bl+Fg)+i, -Fg+2.5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 142.25*(Bl+Fg)+i, -Fg+5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 141.75*(Bl+Fg)+i, -Fg+5, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

difference(){union(){
translate([ 139.25*(Bl+Fg), -Fg, -5*(Bh+Fg) ]) wallhalf(2.5, 115, 0,0,1);
translate([ 139.25*(Bl+Fg), Bw/2, -5*(Bh+Fg) ]) wall(4.5, 44, 0,0,1);
translate([ 150.75*(Bl+Fg), Bw/2, -5*(Bh+Fg) ]) wall(3, 44, 0,0,1);
translate([ 139.25*(Bl+Fg), Bw/2, 39*(Bh+Fg) ]) wall(6, 1, 0,0,1);
translate([ 149.25*(Bl+Fg), Bw/2, 39*(Bh+Fg) ]) wall(4.5, 1, 0,0,1);
translate([ 139.25*(Bl+Fg), Bw/2, 40*(Bh+Fg) ]) wall(14.5, 18, 0,0,0);
translate([ 152.75*(Bl+Fg), -Fg, -5*(Bh+Fg) ]) wallhalf(2, 115, 0,0,1);
// Fenster oben
translate([ 139.25*(Bl+Fg), Bw/2, 58*(Bh+Fg) ]) wall(5.75, 30, 0,0,0);
translate([ 149.5*(Bl+Fg), Bw/2, 58*(Bh+Fg) ]) wall(4.25, 30, 0,0,0);
translate([ 139.25*(Bl+Fg), Bw/2, 88*(Bh+Fg) ]) wall(14.5, 22, 0,0,0);
}
translate([ 143.75*(Bl+Fg)-Fg, -0*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) bbcut( 26, 150, 0.85 );
translate([ 145*(Bl+Fg)-Fg, Fg*2, (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
}
translate([ 143.75*(Bl+Fg)-Fg, +Bh, (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 143.13*(Bl+Fg)-Fg, -0.2*(Bl+Fg)+Bh, (Bh+Fg)*37.7 ]) brickbow( 17, 165, 0.99, 1, Bl, Bh, Bw, 0 ); 
translate([ 144.25*(Bl+Fg)-Fg, 0.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 
// Xn, Radius, Zwischenraum, halbe Ziegel, Dicke, Hoehe, Ziegelbreite, Zement
translate([ 145*(Bl+Fg)-Fg, Fg*2, (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 145.5*(Bl+Fg)-Fg, Bw+Bh+Fg, (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 

// Fenster oben
translate([ 144.5*(Bl+Fg), Bw+Bh+Fg, 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 149*(Bl+Fg), Bw+Bh+Fg, 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
// Fenster unten
translate([ 143.25*(Bl+Fg), Bw+Bh+Fg, 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 150.25*(Bl+Fg), Bw+Bh+Fg, 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 143.25*(Bl+Fg), Bw+Bh+Fg, -5*(Bh+Fg) ]) wallhalf(8, 10, 0,0,1);

// Ornament Unten
translate([ 143.25*(Bl+Fg), Bw+Fg/2, -5*(Bh+Fg) ]) wallhalf(8, 1, 0,0,1);
for ( i = [ 0 : 33 : 180 ]) {
translate([ 143.65*(Bl+Fg)+i, Bw+Fg/2, -4*(Bh+Fg) ]) wallhalf(0.55, 6, 0,0,1);
translate([ 143.4*(Bl+Fg)+i, Bw+Fg/2, 2*(Bh+Fg) ]) wallhalf(1, 1, 0,0,1);}
translate([ 143.25*(Bl+Fg), Bw+Fg/2, 3*(Bh+Fg) ]) wallhalf(8, 2, 0,0,0);

// Ornament Oben
translate([ 141.25*(Bl+Fg), -Fg, 99*(Bh+Fg) ]) wallhalf(12, 11, 0,0,1);
for ( i = [ 0 : 31.5 : 250 ]) {
translate([ 142.37*(Bl+Fg)+i, -Fg, 98*(Bh+Fg) ]) wallhalf(1, 1, 0,0,1);
translate([ 142.6*(Bl+Fg)+i, 0, 97*(Bh+Fg) ]) wallhalf(0.55, 1, 0,0,1);
translate([ 142.73*(Bl+Fg)+i, +Fg, 95*(Bh+Fg) ]) cube([Bh,Bl,Bw+Fg]);}
translate([ 141.55*(Bl+Fg), -Fg, 98*(Bh+Fg) ]) wallhalf(0.55, 1, 0,0,1);
translate([ 152.45*(Bl+Fg), -Fg, 98*(Bh+Fg) ]) wallhalf(0.55, 1, 0,0,1);

// Fensterbank
translate([ 287.5*(Bw+Fg)-Fg, Bh, (Bh+Fg)*4 ]) cube([ 14*(Bw+Fg)+Fg, Bl, Bh ]);
translate([ 287.5*(Bw+Fg)-Fg, Bh+Fg*2, (Bh+Fg)*4 ]) rotate([30,0,0]) cube([ 14*(Bw+Fg)+Fg, Bl-Fg, Bh ]);
translate([ 287.5*(Bw+Fg)-Fg, Bl, (Bh+Fg)*4 ]) cube([ 14*(Bw+Fg)+Fg, Bh, 15 ]);

//Keller
translate([ 139.25*(Bl+Fg), -Fg, -5*(Bh+Fg)-Bw-Fg ]) basement( 0, 95, 1, 3.5);
translate([ 139.25*(Bl+Fg), -Fg, -12*(Bh+Fg)-Bw-Fg ]) wall(29, 7, 0,0,1);

// Hinten 2. Teil
// Ornament Mitte
translate([ 154.25*(Bl+Fg), -Fg, 57*(Bh+Fg) ]) wallhalf(12.5,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 154.75*(Bl+Fg)+i, -Fg+2.5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 155.25*(Bl+Fg)+i, -Fg+5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 11*(Bl+Fg) ])
translate([ 154.75*(Bl+Fg)+i, -Fg+5, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

difference(){union(){
translate([ 153.75*(Bl+Fg), Bw/2, -5*(Bh+Fg) ]) wall(2.5, 44, 0,0,1);
translate([ 164.25*(Bl+Fg), Bw/2, -5*(Bh+Fg) ]) wall(3, 44, 0,0,1);
translate([ 153.75*(Bl+Fg), Bw/2, 39*(Bh+Fg) ]) wall(4, 3, 0,0,1);
translate([ 162.75*(Bl+Fg), Bw/2, 39*(Bh+Fg) ]) wall(4.5, 3, 0,0,1);
translate([ 153.75*(Bl+Fg), Bw/2, 42*(Bh+Fg) ]) wall(13.5, 16, 0,0,1);
translate([ 165.75*(Bl+Fg), -Fg, -5*(Bh+Fg) ]) wallhalf(2.5, 115, 0,0,1);
// Fenster oben
translate([ 153.75*(Bl+Fg), Bw/2, 58*(Bh+Fg) ]) wall(4.25, 30, 0,0,0);
translate([ 162.5*(Bl+Fg), Bw/2, 58*(Bh+Fg) ]) wall(4.75, 30, 0,0,0);
translate([ 153.75*(Bl+Fg), Bw/2, 88*(Bh+Fg) ]) wall(13.5, 22, 0,0,0);
}
translate([ 156.25*(Bl+Fg)-Fg, -0*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) bbcut( 28, 170, 0.9 );
translate([ 158*(Bl+Fg)-Fg, Fg*2, (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
}
translate([ 156.25*(Bl+Fg)-Fg, +Bh, (Bh+Fg)*35 ]) brickbow( 28, 170, 0.9, 2 );
translate([ 155.53*(Bl+Fg)-Fg, -0.2*(Bl+Fg)+Bh, (Bh+Fg)*37.7 ]) brickbow( 19, 188, 0.96, 1, Bl, Bh, Bw, 0 ); 
translate([ 156.75*(Bl+Fg)-Fg, 0.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) brickbow( 24, 150, 1.03, 1, Bw, Bw, Bh, 1 ); 
// Xn, Radius, Zwischenraum, halbe Ziegel, Dicke, Hoehe, Ziegelbreite, Zement
translate([ 158*(Bl+Fg)-Fg, Fg*2, (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 158.5*(Bl+Fg)-Fg, Bw+Bh+Fg, (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 

// Fenster oben
translate([ 157.5*(Bl+Fg), Bw+Bh+Fg, 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 162*(Bl+Fg), Bw+Bh+Fg, 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
// Tuer
translate([ 155.75*(Bl+Fg), Bw+Bh+Fg, -5*(Bh+Fg) ]) wallhalf(1, 42, 0,0,1);
translate([ 163.75*(Bl+Fg), Bw+Bh+Fg, -5*(Bh+Fg) ]) wallhalf(1, 42, 0,0,1);

// Ornament Oben
translate([ 154.25*(Bl+Fg), -Fg, 99*(Bh+Fg) ]) wallhalf(12, 11, 0,0,1);
for ( i = [ 0 : 31.5 : 250 ]) {
translate([ 155.37*(Bl+Fg)+i, -Fg, 98*(Bh+Fg) ]) wallhalf(1, 1, 0,0,1);
translate([ 155.6*(Bl+Fg)+i, 0, 97*(Bh+Fg) ]) wallhalf(0.55, 1, 0,0,1);
translate([ 155.73*(Bl+Fg)+i, +Fg, 95*(Bh+Fg) ]) cube([Bh,Bl,Bw+Fg]);}
translate([ 154.55*(Bl+Fg), -Fg, 98*(Bh+Fg) ]) wallhalf(0.55, 1, 0,0,1);
translate([ 165.45*(Bl+Fg), -Fg, 98*(Bh+Fg) ]) wallhalf(0.55, 1, 0,0,1);

// Treppe +++++++++++++++++++++++
for ( i = [ 1 : 4 ]){
translate([ (156-i)*(Bl+Fg)-Bh, (-i)*(Bl+Fg)-Fg*2, ((-2-i*2)*(Bh+Fg)-Bw-Fg*2) -(i-1)*1.2 ]) 
cube([ (9+i*2)*(Bl+Fg)-Fg*2, i*(Bl+Fg), Bh ]);
translate([ (156-i)*(Bl+Fg)-Bh/2, (-i)*(Bl+Fg)-Fg*2+Bh/2, ((-2-i*2)*(Bh+Fg)-Bw-Fg*2-Bw-0.4) -(i-1)*1.3 ]) 
cube([ (9+i*2)*(Bl+Fg)-Fg*2-Bh, i*(Bl+Fg)-Bh/2, Bw+Fg ]);}

// Gleisseite +++++++++++++++++++++++
translate([ 123.5*(Bl+Fg)+Bw-Fg, 34*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wallhalf(2.5, 115, 0,0,0);
translate([ 144.75*(Bl+Fg)+Bw/2, 34*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wallhalf(2, 115, 0,0,0);
translate([ 165.75*(Bl+Fg), 34*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) wallhalf(2.5, 115, 0,0,0);

difference(){union(){
translate([ 124*(Bl+Fg), 33.5*(Bl+Fg), 88*(Bh+Fg) ]) wall(43.5, 22, 0,0,0);
translate([ 124*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wall(4.5, 30, 0,0,0);
translate([ 133*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wall(5.5, 30, 0,0,0);
translate([ 143*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wall(6, 30, 0,0,0);
translate([ 153.5*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wall(5.5, 30, 0,0,0);
translate([ 163.5*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wall(4.5, 30, 0,0,0);
}
translate([ 128.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
translate([ 138.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
translate([ 149*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
translate([ 159*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) bbcut( 18, 120, 0.72 );
}
translate([ 128.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 129*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 
translate([ 138.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 139*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 
translate([ 149*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 149.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 
translate([ 159*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*84 ]) brickbow( 18, 120, 0.72, 2 );
translate([ 159.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*83 ]) brickbow( 14, 100, 0.8, 1, Bw, Bw, Bh, 1 ); 

translate([ 128*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 132.5*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 138*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 142.5*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 148.5*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 153*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 158.5*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);
translate([ 163*(Bl+Fg), 33.5*(Bl+Fg), 58*(Bh+Fg) ]) wallhalf(1, 27, 0,0,1);

// Ornament Mitte
translate([ 125.75*(Bl+Fg), 34*(Bl+Fg)+Bh, 57*(Bh+Fg) ]) wallhalf(40.5,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 39*(Bl+Fg) ])
translate([ 126.25*(Bl+Fg)+i, 34*(Bl+Fg)+Bh-Fg, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 38.5*(Bl+Fg) ])
translate([ 126.75*(Bl+Fg)+i, 34*(Bl+Fg)+Bh-Fg*2, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 39*(Bl+Fg) ])
translate([ 126.25*(Bl+Fg)+i, 34*(Bl+Fg)+Bh-Fg*2, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

difference(){union(){
translate([ 124*(Bl+Fg), 33.5*(Bl+Fg), 40*(Bh+Fg) ]) wall(43.5, 18, 0,0,0);
translate([ 124*(Bl+Fg), 33.5*(Bl+Fg), -5*(Bh+Fg) ]) wall(24, 43, 0,0,1);
translate([ 154.75*(Bl+Fg), 33.5*(Bl+Fg), -5*(Bh+Fg) ]) wall(3, 43, 0,0,1);
translate([ 164.75*(Bl+Fg), 33.5*(Bl+Fg), -5*(Bh+Fg) ]) wall(3, 43, 0,0,1);
translate([ 124*(Bl+Fg), 33.5*(Bl+Fg), 38*(Bh+Fg) ]) wall(25, 2, 0,0,0);
translate([ 154*(Bl+Fg), 33.5*(Bl+Fg), 38*(Bh+Fg) ]) wall(4.5, 2, 0,0,0);
translate([ 164*(Bl+Fg), 33.5*(Bl+Fg), 38*(Bh+Fg) ]) wall(3.75, 2, 0,0,0);
}
translate([ 148*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 148.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 

translate([ 157.75*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 158.25*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 
}
translate([ 148*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 147.38*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*37.7 ]) brickbow( 17, 165, 0.99, 1, Bl, Bh, Bw, 0 ); 
translate([ 148.5*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 

translate([ 157.75*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 157.13*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*37.7 ]) brickbow( 17, 165, 0.99, 1, Bl, Bh, Bw, 0 ); 
translate([ 158.25*(Bl+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 

// Tuer
translate([ 157.25*(Bl+Fg), 33.5*(Bl+Fg), -5*(Bh+Fg) ]) wallhalf(1, 42, 0,0,1);
translate([ 164.25*(Bl+Fg), 33.5*(Bl+Fg), -5*(Bh+Fg) ]) wallhalf(1, 42, 0,0,1);
// Fenster
translate([ 147.5*(Bl+Fg), 33.5*(Bl+Fg), 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 154.25*(Bl+Fg), 33.5*(Bl+Fg), 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 147.5*(Bl+Fg), 33.5*(Bl+Fg), -5*(Bh+Fg) ]) wallhalf(7.75, 10, 0,0,1);

// Ornament Unten
translate([ 147.25*(Bl+Fg), 34*(Bl+Fg)-Bh, -5*(Bh+Fg) ]) wallhalf(8, 1, 0,0,1);
for ( i = [ 0 : 32 : 180 ]) {
translate([ 148*(Bl+Fg)+i-Fg, 34*(Bl+Fg)-Bh, -4*(Bh+Fg) ]) wallhalf(0.55, 6, 0,0,1);
translate([ 147.7*(Bl+Fg)+i, 34*(Bl+Fg)-Bh, 2*(Bh+Fg) ]) wallhalf(1, 1, 0,0,1);}
translate([ 147.25*(Bl+Fg), 34*(Bl+Fg)-Bh, 3*(Bh+Fg) ]) wallhalf(8, 2, 0,0,0);

// Fensterbank
translate([ 296*(Bw+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*4 ]) cube([ 13.5*(Bw+Fg)+Fg, Bl, Bh ]);
translate([ 296*(Bw+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*5.4 ]) rotate([-30,0,0]) cube([ 13.5*(Bw+Fg)+Fg, Bl-Fg, Bh ]);
translate([ 296*(Bw+Fg)-Fg, 33.5*(Bl+Fg), (Bh+Fg)*4 ]) cube([ 13.5*(Bw+Fg)+Fg, Bh, 15 ]);

//Keller
translate([ 124*(Bl+Fg)-Fg, 33.5*(Bl+Fg)+Bh, -5*(Bh+Fg)-Bw-Fg ]) basement( 1, 145, 0, 4.5);
translate([ 124*(Bl+Fg), 33.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg ]) wall(44, 7, 0,0,1);



// Abschluss +++++++++++++++++++++++
translate([ 168.25*(Bl+Fg)-Fg, 0, -5*(Bh+Fg) ]) rotate([0,0,90]) wallhalf(2.5, 115, 0,0,0);
translate([ 168*(Bl+Fg)-Fg*2, 0, -5*(Bh+Fg) ]) rotate([0,0,90]) wall(34.5, 115, 0,0,1);
translate([ 168.25*(Bl+Fg)-Fg, 32*(Bl+Fg)+Bh, -5*(Bh+Fg) ]) rotate([0,0,90]) wallhalf(2.5, 115, 0,0,0);
// Keller 
translate([ 168.25*(Bl+Fg)-Fg, Bl, -5*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) basement( 0, 115, 0, 2);
translate([ 168.25*(Bl+Fg)-Fg, Bw, -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(34.3, 7, 0,0,0);

/*




// Stellwerk #############################################################################

// Gleisseite +++++++++++++++++++++++
translate([ 124*(Bl+Fg), 45.33*(Bl+Fg), -5*(Bh+Fg)-Fg  ]) cube([ 22*(Bl+Fg), Bl+Fg, Bw ]);
translate([ 124*(Bl+Fg), 45.33*(Bl+Fg), Bw+2*(Bh+Fg)  ]) cube([ 22*(Bl+Fg), Bl+Fg, Bw ]);
translate([ 124*(Bl+Fg), 45.33*(Bl+Fg), Bw*2+23*(Bh+Fg)+Fg  ]) cube([ 22*(Bl+Fg), Bl+Fg, Bw ]);
translate([ 124*(Bl+Fg), 45.33*(Bl+Fg), Bw*3+26*(Bh+Fg)+Fg*2  ]) cube([ 22*(Bl+Fg), Bl+Fg, Bw ]);

translate([ 124.5*(Bl+Fg), 45.33*(Bl+Fg),  -5*(Bh+Fg)+Bw  ]) wall(3.75, 7, 0,0,0);
translate([ 128.75*(Bl+Fg), 45.33*(Bl+Fg),  -5*(Bh+Fg)+Bw  ]) wall(3.75, 7, 0,0,0);
translate([ 133*(Bl+Fg), 45.33*(Bl+Fg),  -5*(Bh+Fg)+Bw  ]) wall(3.75, 7, 0,0,0);
translate([ 137.25*(Bl+Fg), 45.33*(Bl+Fg),  -5*(Bh+Fg)+Bw  ]) wall(4, 7, 0,0,0);
translate([ 141.75*(Bl+Fg), 45.33*(Bl+Fg),  -5*(Bh+Fg)+Bw  ]) wall(3.8, 7, 0,0,0);

translate([ 128.25*(Bl+Fg), 45.83*(Bl+Fg)+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bw, Bw, 37*(Bh+Fg) ]);
translate([ 132.5*(Bl+Fg), 45.83*(Bl+Fg)+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bw, Bw, 37*(Bh+Fg) ]);
translate([ 136.75*(Bl+Fg), 45.83*(Bl+Fg)+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bw, Bw, 37*(Bh+Fg) ]);
translate([ 141.25*(Bl+Fg), 45.83*(Bl+Fg)+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bw, Bw, 37*(Bh+Fg) ]);

translate([ 124.5*(Bl+Fg), 45.33*(Bl+Fg), Bw*3+23*(Bh+Fg)+Fg*2 ]) wall(3.75, 3, 0,0,0);
translate([ 128.75*(Bl+Fg), 45.33*(Bl+Fg), Bw*3+23*(Bh+Fg)+Fg*2 ]) wall(3.75, 3, 0,0,0);
translate([ 133*(Bl+Fg), 45.33*(Bl+Fg), Bw*3+23*(Bh+Fg)+Fg*2 ]) wall(3.75, 3, 0,0,0);
translate([ 137.25*(Bl+Fg), 45.33*(Bl+Fg), Bw*3+23*(Bh+Fg)+Fg*2 ]) wall(4, 3, 0,0,0);
translate([ 141.75*(Bl+Fg), 45.33*(Bl+Fg), Bw*3+23*(Bh+Fg)+Fg*2 ]) wall(3.8, 3, 0,0,0);

// Fueller
translate([ 124*(Bl+Fg)+Bw/2, 45.33*(Bl+Fg)+Fg, -5*(Bh+Fg)-Fg  ]) cube([ 21.5*(Bl+Fg), Bl-Fg*3, 9*(Bh+Fg) ]);
translate([ 124*(Bl+Fg)+Bw/2, 45.33*(Bl+Fg)+Fg, Bw*3+22*(Bh+Fg)  ]) cube([ 21.5*(Bl+Fg), Bl-Fg*3, 5*(Bh+Fg)+Fg ]);


// Front +++++++++++++++++++++++
translate([ 124*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl+Fg, Bw, 37*(Bh+Fg)]);
translate([ 124*(Bl+Fg), 39.5*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl+Fg, Bw, 37*(Bh+Fg) ]);
translate([ 124*(Bl+Fg), 46.25*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bw, Bw, 37*(Bh+Fg) ]);
//translate([ 124*(Bl+Fg), 46.25*(Bl+Fg)-Bw+Fg,  Bw*2+23*(Bh+Fg)+Fg  ]) cube([ Bw, Bw, 2*Bw+3*(Bh+Fg)+Fg ]);

translate([ 125*(Bl+Fg), 39.5*(Bl+Fg)+Fg*2,  -5*(Bh+Fg)+Bw  ])  rotate([0,0,90]) wall(6.25, 7, 0,0,0);
translate([ 125*(Bl+Fg), 35*(Bl+Fg)+Fg*2,  Bw*3+23*(Bh+Fg)+Fg*2  ])  rotate([0,0,90]) wall(4, 3, 0,0,0);
translate([ 125*(Bl+Fg), 39.5*(Bl+Fg)+Fg*2,  Bw*3+23*(Bh+Fg)+Fg*2  ])  rotate([0,0,90]) wall(6.25, 3, 0,0,0);

translate([ 124*(Bl+Fg), 39.5*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl+Fg, 7.25*(Bl+Fg)-Bw, Bw ]);
translate([ 124*(Bl+Fg), 39.5*(Bl+Fg)-Bw+Fg, Bw+2*(Bh+Fg)  ]) cube([Bl+Fg, 7.25*(Bl+Fg)-Fg, Bw ]);
translate([ 124*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, Bw*2+23*(Bh+Fg)+Fg  ]) cube([Bl+Fg, 12*(Bl+Fg)-Bw, Bw ]);
translate([ 124*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, Bw*3+26*(Bh+Fg)+Fg*2  ]) cube([Bl+Fg, 12*(Bl+Fg)-Bw, Bw ]);

// Fueller
translate([ 124*(Bl+Fg)+Fg*2, 39.6*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl-Fg*3, 7*(Bl+Fg)-Fg*2, 9*(Bh+Fg) ]);
translate([ 124*(Bl+Fg)+Fg*2, 35*(Bl+Fg)-Bw+Fg, Bw*2+23*(Bh+Fg)+Fg  ]) cube([Bl-Fg*3, 12*(Bl+Fg)-Bw-Fg*2, 5*(Bh+Fg)+Fg ]);



// Abschluss +++++++++++++++++++++++
translate([ 145*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl+Fg, Bw, 37*(Bh+Fg) ]);
translate([ 145*(Bl+Fg), 39.5*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl+Fg, Bw, 37*(Bh+Fg) ]);
translate([ 145.5*(Bl+Fg)+Fg, 46.25*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bw, Bw, 37*(Bh+Fg) ]);
//translate([ 145.5*(Bl+Fg)+Fg, 46.25*(Bl+Fg)-Bw+Fg,  Bw*2+23*(Bh+Fg)+Fg  ]) cube([Bw, Bw, 2*Bw+3*(Bh+Fg)+Fg ]);

translate([ 146*(Bl+Fg)-Fg, 39.5*(Bl+Fg)+Fg*2,  -5*(Bh+Fg)+Bw  ])  rotate([0,0,90]) wall(6.25, 7, 0,0,0);
translate([ 146*(Bl+Fg)-Fg, 35*(Bl+Fg)+Fg*2,  -5*(Bh+Fg)+Bw  ])  rotate([0,0,90]) wall(4, 7, 0,0,0);
translate([ 146*(Bl+Fg)-Fg, 35*(Bl+Fg)+Fg*2,  Bw*2+2*(Bh+Fg)+Fg  ])  rotate([0,0,90]) wall(4, 21, 0,0,0);
translate([ 146*(Bl+Fg)-Fg, 35*(Bl+Fg)+Fg*2,  Bw*3+23*(Bh+Fg)+Fg*2  ])  rotate([0,0,90]) wall(4, 3, 0,0,0);
translate([ 146*(Bl+Fg)-Fg, 39.5*(Bl+Fg)+Fg*2,  Bw*3+23*(Bh+Fg)+Fg*2  ])  rotate([0,0,90]) wall(6.25, 3, 0,0,0);

translate([ 145*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl+Fg, 12*(Bl+Fg)-Bw, Bw ]);
translate([ 145*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, Bw+2*(Bh+Fg)  ]) cube([Bl+Fg, 12*(Bl+Fg)-Bw+Fg, Bw ]);
translate([ 145*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, Bw*2+23*(Bh+Fg)+Fg  ]) cube([Bl+Fg, 12*(Bl+Fg)-Bw, Bw ]);
translate([ 145*(Bl+Fg), 35*(Bl+Fg)-Bw+Fg, Bw*3+26*(Bh+Fg)+Fg*2  ]) cube([Bl+Fg, 12*(Bl+Fg)-Bw, Bw ]);

// Fueller
translate([ 145*(Bl+Fg)+Fg, 35*(Bl+Fg)-Bw+Fg, -5*(Bh+Fg)-Fg  ]) cube([Bl-Fg*3, 12*(Bl+Fg)-Bw-Fg*2, 9*(Bh+Fg) ]);
translate([ 145*(Bl+Fg)+Fg, 35*(Bl+Fg)-Bw+Fg, Bw+2*(Bh+Fg)  ]) cube([Bl-Fg*3, 5*(Bl+Fg)-Bw+Fg, 23*(Bh+Fg) ]);
translate([ 145*(Bl+Fg)+Fg, 35*(Bl+Fg)-Bw+Fg, Bw*3+22*(Bh+Fg)   ]) cube([Bl-Fg*3, 12*(Bl+Fg)-Bw-Fg*2, 5*(Bh+Fg) ]);


*/



// Empfangsgebaeude Aufenthaltsraum ########################################################################
// Hinten
// Ornament Mitte
translate([ 168.75*(Bl+Fg), 2.5*(Bl+Fg)-Fg, 57*(Bh+Fg) ]) wallhalf(20.5,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 18*(Bl+Fg) ])
translate([ 169.25*(Bl+Fg)+i, 2.5*(Bl+Fg)-Fg+2.5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 18*(Bl+Fg) ])
translate([ 169.75*(Bl+Fg)+i, 2.5*(Bl+Fg)-Fg+5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 18*(Bl+Fg) ])
translate([ 169.25*(Bl+Fg)+i, 2.5*(Bl+Fg)-Fg+5, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

difference(){union(){
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)-Fg, -5*(Bh+Fg) ]) wallhalf(1.5, 89, 0,0,1);
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)+Bw/2, -5*(Bh+Fg) ]) wall( 2.5 , 44, 0, 0, 1 );
translate([ 177.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, -5*(Bh+Fg) ]) wall(2.5, 44, 0,0,1);
translate([ 186.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, -5*(Bh+Fg) ]) wall(3, 44, 0,0,1);
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)+Bw/2, 39*(Bh+Fg) ]) wall(4, 1, 0,0,1);
translate([ 175.5*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, 39*(Bh+Fg) ]) wall(6, 1, 0,0,1);
translate([ 185*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, 39*(Bh+Fg) ]) wall(4.75, 1, 0,0,1);
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)+Bw/2, 40*(Bh+Fg) ]) wall(21.91, 18, 0,0,0);
translate([ 187.75*(Bl+Fg), 2.5*(Bl+Fg)-Fg, -5*(Bh+Fg) ]) wallhalf(2, 89, 0,0,1);

// Fenster oben
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(3.43, 18, 0,0,0);
translate([ 173.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(1, 18, 0,0,0);
translate([ 176.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(4.5, 18, 0,0,0);
translate([ 182.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(1, 18, 0,0,0);
translate([ 186*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(3.91, 18, 0,0,0);
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)+Bw/2, 76*(Bh+Fg) ]) wall(21.91, 8, 0,0,0);
}


translate([ 170.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) bbcut( 26, 150, 0.85, 2 );
translate([ 170.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+0.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) bbcut( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 
translate([ 179.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) bbcut( 26, 150, 0.85, 2 );
translate([ 180.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+0.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) bbcut( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 

translate([ 171.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
translate([ 174.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
translate([ 180.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
translate([ 183.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );



}
translate([ 170.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 169.63*(Bl+Fg)-Fg, 2.5*(Bl+Fg)-0.2*(Bl+Fg)+Bh, (Bh+Fg)*37.7 ]) brickbow( 17, 165, 0.99, 1, Bl, Bh, Bw, 0 ); 
translate([ 170.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+0.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 
// Xn, Radius, Zwischenraum, halbe Ziegel, Dicke, Hoehe, Ziegelbreite, Zement
translate([ 179.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh, (Bh+Fg)*35 ]) brickbow( 26, 150, 0.85, 2 );
translate([ 179.13*(Bl+Fg)-Fg, 2.5*(Bl+Fg)-0.2*(Bl+Fg)+Bh, (Bh+Fg)*37.7 ]) brickbow( 17, 165, 0.99, 1, Bl, Bh, Bw, 0 ); 
translate([ 180.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+0.5*(Bl+Fg)+Bh, (Bh+Fg)*34.2 ]) brickbow( 22, 130, 0.95, 1, Bw, Bw, Bh, 1 ); 

translate([ 171.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
translate([ 174.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
translate([ 180.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
translate([ 183.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );


// Fenster unten
translate([ 169.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Bh+Fg, 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 176.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Bh+Fg, 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 169.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Bh+Fg, -5*(Bh+Fg) ]) wallhalf(8, 10, 0,0,1);

translate([ 179.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Bh+Fg, 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 186.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Bh+Fg, 5*(Bh+Fg) ]) wallhalf(1, 32, 0,0,1);
translate([ 179.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Bh+Fg, -5*(Bh+Fg) ]) wallhalf(8, 10, 0,0,1);

// Ornament Unten
translate([ 169.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Fg/2, -5*(Bh+Fg) ]) wallhalf(8, 1, 0,0,1);
for ( i = [ 0 : 33 : 180 ]) {
translate([ 170.15*(Bl+Fg)+i, 2.5*(Bl+Fg)+Bw+Fg/2, -4*(Bh+Fg) ]) wallhalf(0.55, 6, 0,0,1);
translate([ 169.9*(Bl+Fg)+i, 2.5*(Bl+Fg)+Bw+Fg/2, 2*(Bh+Fg) ]) wallhalf(1, 1, 0,0,1);}
translate([ 169.75*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Fg/2, 3*(Bh+Fg) ]) wallhalf(8, 2, 0,0,0);

translate([ 180.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Fg/2, -5*(Bh+Fg) ]) wallhalf(8, 1, 0,0,1);
for ( i = [ 0 : 33 : 180 ]) {
translate([ 180.65*(Bl+Fg)+i, 2.5*(Bl+Fg)+Bw+Fg/2, -4*(Bh+Fg) ]) wallhalf(0.55, 6, 0,0,1);
translate([ 180.4*(Bl+Fg)+i, 2.5*(Bl+Fg)+Bw+Fg/2, 2*(Bh+Fg) ]) wallhalf(1, 1, 0,0,1);}
translate([ 180.25*(Bl+Fg), 2.5*(Bl+Fg)+Bw+Fg/2, 3*(Bh+Fg) ]) wallhalf(8, 2, 0,0,0);

// Fensterbank
translate([ 170.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh, (Bh+Fg)*4 ]) cube([ 14*(Bw+Fg)+Fg, Bl, Bh ]);
translate([ 170.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh+Fg*2, (Bh+Fg)*4 ]) rotate([30,0,0]) cube([ 14*(Bw+Fg)+Fg, Bl-Fg, Bh ]);
translate([ 170.25*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bl, (Bh+Fg)*4 ]) cube([ 14*(Bw+Fg)+Fg, Bh, 15 ]);

translate([ 179.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh, (Bh+Fg)*4 ]) cube([ 14*(Bw+Fg)+Fg, Bl, Bh ]);
translate([ 179.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bh+Fg*2, (Bh+Fg)*4 ]) rotate([30,0,0]) cube([ 14*(Bw+Fg)+Fg, Bl-Fg, Bh ]);
translate([ 179.75*(Bl+Fg)-Fg, 2.5*(Bl+Fg)+Bl, (Bh+Fg)*4 ]) cube([ 14*(Bw+Fg)+Fg, Bh, 15 ]);

//Keller
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)-Fg, -5*(Bh+Fg)-Bw-Fg ]) basement( 0, 71, 1, 2);
translate([ 168*(Bl+Fg)-Fg*2, 2.5*(Bl+Fg)-Fg, -12*(Bh+Fg)-Bw-Fg ]) wall(21.91, 7, 0,0,1);




//translate([ 0, 28.5*(Bl+Fg)-Fg, 0]) 
{
// Gleisseite
// Ornament Mitte
translate([ 168.75*(Bl+Fg), 31*(Bl+Fg)-Fg, 57*(Bh+Fg) ]) wallhalf(20.5,1,0,0,1);
for ( i = [ 0 : Bl+Fg : 18*(Bl+Fg) ])
translate([ 169.25*(Bl+Fg)+i, 31*(Bl+Fg)-Fg+2.5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 18*(Bl+Fg) ])
translate([ 169.75*(Bl+Fg)+i, 31*(Bl+Fg)-Fg+5, 56*(Bh+Fg) ]) cube([Bw,Bw,Bh]);
for ( i = [ 0 : Bl+Fg : 18*(Bl+Fg) ])
translate([ 169.25*(Bl+Fg)+i, 31*(Bl+Fg)-Fg+5, 55*(Bh+Fg) ]) cube([Bw,Bw,Bh]);

difference(){union(){
translate([ 168*(Bl+Fg)-Fg*2, 31.88*(Bl+Fg)-Fg, 40*(Bh+Fg) ]) wallhalf(1.5, 44, 0,0,1);
translate([ 168*(Bl+Fg)-Fg*2, 30.88*(Bl+Fg)+Bw/2, 40*(Bh+Fg) ]) wall(21.91, 18, 0,0,0);
translate([ 187.75*(Bl+Fg), 31.88*(Bl+Fg)-Fg, 40*(Bh+Fg) ]) wallhalf(2, 44, 0,0,1);

// Fenster oben
translate([ 168*(Bl+Fg)-Fg*2, 30.88*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(3.43, 18, 0,0,0);
translate([ 173.25*(Bl+Fg), 30.88*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(1, 18, 0,0,0);
translate([ 176.25*(Bl+Fg), 30.88*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(4.5, 18, 0,0,0);
translate([ 182.75*(Bl+Fg), 30.88*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(1, 18, 0,0,0);
translate([ 186*(Bl+Fg)-Fg*2, 30.88*(Bl+Fg)+Bw/2, 58*(Bh+Fg) ]) wall(3.91, 18, 0,0,0);
translate([ 168*(Bl+Fg)-Fg*2, 30.88*(Bl+Fg)+Bw/2, 76*(Bh+Fg) ]) wall(21.91, 8, 0,0,0);
}
translate([ 171.25*(Bl+Fg)-Fg, 30.88*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
translate([ 174.25*(Bl+Fg)-Fg, 30.88*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
translate([ 180.75*(Bl+Fg)-Fg, 30.88*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
translate([ 183.75*(Bl+Fg)-Fg, 30.88*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) bbcut( 9, 70, 0.65 );
}

translate([ 171.25*(Bl+Fg)-Fg, 30.88*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
translate([ 174.25*(Bl+Fg)-Fg, 30.88*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
translate([ 180.75*(Bl+Fg)-Fg, 31*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
translate([ 183.75*(Bl+Fg)-Fg, 31*(Bl+Fg)+Fg*2, (Bh+Fg)*73 ]) brickbow( 9, 70, 0.65, 2 );
}




//translate([ 125*(Bl+Fg)-Bh, 40*Bl, -12*(Bh+Fg)-Bw-Fg  ]) cube([1000,10,10]);










