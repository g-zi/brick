include <brick.scad>;


// Fritzlar Empfangsgebaeude, Schuppen
/*
// 1. Haelfte #############################################################################
difference() { union(){
// Hinten
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
translate([ 0, 0, (Bh+Fg)*42 ]) wall(40.5, 18, 0,0,0);
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

// Gleisseite
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

// Front
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
// Hinten 
difference() { union(){
translate([ 50*(Bl+Fg), 0, 0 ]) wall(11.5, 37, 0,0,0);
translate([ 40.5*(Bl+Fg), 0, (Bh+Fg)*36 ]) wall(1, 2, 0,0,0);
translate([ 40.5*(Bl+Fg), 0, (Bh+Fg)*38 ]) wall(2, 2, 0,0,0);
translate([ 48.5*(Bl+Fg), 0, (Bh+Fg)*37 ]) wall(13, 3, 0,0,1);
translate([ 40.5*(Bl+Fg), 0, (Bh+Fg)*40 ]) wall(21, 20, 0,0,0);
translate([ 40*(Bl+Fg)+Bw, Fg, 37*(Bh+Fg)-Fg ]) cube([Fg*2, Bw*2-Fg, 23*(Bh+Fg)]);
translate([ 40*(Bl+Fg), 0, 38*(Bh+Fg) ]) wallhalf(1,22,1,0,1);
translate([ 40*(Bl+Fg), Bw+Fg, 38*(Bh+Fg) ]) wallhalf(1,22,1,0,1);
}
translate([ 40.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) bbcut( 37, 200, 0.52, 2 );
}
translate([ 40.5*(Bl+Fg)-Fg, 0, 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );

// Abschluss
translate([ 61*(Bl+Fg)+Bw, Bw+Fg, 0]) rotate([0,0,90]) wall(33, 63, 0,0,1);

// Gleisseite
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
// Hinten
translate([ -Bw-Fg, 0, -3*(Bh+Fg)-Bw-Fg ]) wall(62, 3, 0,0, 1);
translate([ -Bw-Fg, 0, -8*(Bh+Fg)-Bw-Fg ]) wall(12.5, 9, 0,0, 0);
translate([ 14*(Bl+Fg), 0, -8*(Bh+Fg)-Bw-Fg ]) wall(16.5, 9, 0,0, 0);
translate([ 32.5*(Bl+Fg), 0, -8*(Bh+Fg)-Bw-Fg ]) wall(14, 9, 0,0, 0);
translate([ 48.5*(Bl+Fg), 0, -8*(Bh+Fg)-Bw-Fg ]) wall(13, 9, 0,0, 0);
translate([ -Bw-Fg, 0, -12*(Bh+Fg)-Bw-Fg ]) wall(62, 4, 0,0, 0);
// Gleisseite
translate([ -Bw-Fg, 33*(Bl+Fg), -3*(Bh+Fg)-Bw-Fg ]) wall(62, 3, 0,0, 1);
translate([ -Bw-Fg, 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(12.5, 9, 0,0, 0);
translate([ 14*(Bl+Fg), 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(16.5, 9, 0,0, 0);
translate([ 32.5*(Bl+Fg), 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(14, 9, 0,0, 0);
translate([ 48.5*(Bl+Fg), 33*(Bl+Fg), -8*(Bh+Fg)-Bw-Fg ]) wall(13, 9, 0,0, 0);
translate([ -Bw-Fg, 33*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(62, 4, 0,0, 0);
// Vorne
translate([ Bh, 0, -2*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(34, 2, 0,0, 1);
translate([ Bh, 0, -4*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(13.5, 2, 0,0, 1);
translate([ Bh, 15.5*(Bl+Fg), -4*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(18.5, 2, 0,0, 1);
translate([ Bw, Bw+Fg, -10*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(13, 6, 0,0, 1);
translate([ Bw, 15.5*(Bl+Fg), -10*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(18, 6, 0,0, 1);
translate([ Bw, Bw+Fg, -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(33, 2, 0,0, 1);
// Abschluss
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

// Luftschutz
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

translate([ 62*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(1.5, 13, 0,0, 0);
translate([ 62.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);
translate([ 63.5*(Bl+Fg)-Fg, 34*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(5.5, 13, 0,0, 1);

// Plateau Gleisseite
translate([ 5*(Bl+Fg), 34*(Bl+Fg), -Bw-Fg ]) cube([56.5*(Bl+Fg), 5*(Bl+Fg)+Bw,Bw]);


*/



// Zwischenschuppen #######################################################################
// Hinten
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

// Versatz hinten
translate([ 93*(Bl+Fg)-Fg, 2.5*(Bl+Fg), 0]) rotate([0,0,90]) wall(27.5, 38, 0,0,0);
translate([ 93*(Bl+Fg)-Fg, -6*(Bl+Fg), 0]) rotate([0,0,90]) wall(4.5, 38, 0,0,0);
translate([ 93*(Bl+Fg)-Fg, -6*(Bl+Fg), 38*(Bh+Fg)]) rotate([0,0,90]) wall(36, 25, 0,0,0);

translate([ 91.5*(Bl+Fg)+Bh, 3.5*(Bl+Fg)+Bh, -1*(Bh+Fg)]) wallhalf(0.5, 64, 0,0,1);
translate([ 91.5*(Bl+Fg)+Bh, 3.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg]) wallhalf(0.5, 13, 0,0,1);

translate([ 92*(Bl+Fg)+Bh, -6.5*(Bl+Fg), 0]) rotate([0,0,90]) wallhalf(2, 44, 0,0,0);
translate([ 92*(Bl+Fg)+Bh+Bh/2, -5*(Bl+Fg),  43*(Bh+Fg)]) rotate([0,0,90]) wallhalf(9, 1, 0,0,1);
translate([ 92*(Bl+Fg)+Bh, -6.5*(Bl+Fg),  44*(Bh+Fg)]) rotate([0,0,90]) wallhalf(10.5, 19, 0,0,0);

translate([ 91.5*(Bl+Fg)+Bh+Fg, -6.5*(Bl+Fg), 0 ]) wallhalf(2, 63, 0,0,1);
//translate([ 91.5*(Bl+Fg)+Bh, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg]) wallhalf(2, 12, 0,0,1);



// Gleisseite
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
translate([ 93*(Bl+Fg)-Fg, -1.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) bbcut( 15, 120, 0.9, 2 );
}
translate([ 63.5*(Bl+Fg)-Fg, 29*(Bl+Fg), (Bh+Fg)*34 ]) brickbow( 13, 120, 0.95, 2 );
translate([ 75*(Bl+Fg)-Fg, 29*(Bl+Fg), 33*(Bh+Fg) ]) brickbow( 37, 200, 0.52, 2 );
translate([ 93*(Bl+Fg)-Fg, -1.5*(Bl+Fg)-Fg, (Bh+Fg)*34 ]) rotate([0,0,90]) brickbow( 15, 120, 0.9, 2 );

// Versatz Gleisseite
translate([ 91.5*(Bl+Fg)+Bh, 29.5*(Bl+Fg)+Bh, 0 ]) wallhalf(2, 63, 0,0,1);
translate([ 91.5*(Bl+Fg)+Bh, 29.5*(Bl+Fg)+Bh, -12*(Bh+Fg)-Bw-Fg]) wallhalf(2, 12, 0,0,1);



// Keller 
// Hinten
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), -Bw-Fg ]) basement( 0, 106, 0, 3);
translate([ 61.5*(Bl+Fg), 4*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(31, 12, 0,0, 1);
translate([ 92*(Bl+Fg)-Bh, -6.5*(Bl+Fg), -Bw-Fg ]) basement( 1, 106, 0, 3);
translate([ 92*(Bl+Fg)-Bh, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(31, 12, 0,0, 0);
// Gleisseite
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), -Bw-Fg ]) basement( 0, 106, 0, 3);
translate([ 61.5*(Bl+Fg), 29*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wall(31, 12, 0,0, 1);
// Abschluss
translate([ 92.5*(Bl+Fg)+Bh, -5.5*(Bl+Fg), -Bw-Fg ]) rotate([0,0,90]) basement( 0, 120, 0, 0.65 );
translate([ 92.5*(Bl+Fg)+Bh, -6*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wall(36, 12, 0,0, 1);

// Treppe und Plateu hinten
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
// Treppenstufen (2*Hoehe + Tiefe = 63cm)
translate([ 87.5*(Bl+Fg)+Fg, -6.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]); // 18 hoch, 27 tief
translate([ 87.5*(Bl+Fg)+Fg, -5.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+18 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -4.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+36 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -3.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+54 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);
translate([ 87.5*(Bl+Fg)+Fg, -2.5*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+72 ]) cube([ 4*(Bl+Fg)-Fg+Bh, 35, 18 ]);

// Treppe und Plateu Gleisseite
// Pfeiler
translate([ 63.5*(Bl+Fg), 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 65.5*(Bl+Fg)-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 64*(Bl+Fg)-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 76*(Bl+Fg)-Bh, 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 78*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 76.5*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);

translate([ 90*(Bl+Fg)-Bh, 39*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) wallhalf(2, 13, 0,0, 0);
translate([ 92*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
translate([ 90.5*(Bl+Fg)-Bh-Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg ]) rotate([0,0,90]) wallhalf(9.5, 13, 0,0, 1);
// Plateau
translate([ 61.5*(Bl+Fg), 30*(Bl+Fg), -Bw-Fg ]) cube([46*(Bl+Fg)+Bh, 9.5*(Bl+Fg)-Fg,Bw]);

// Treppenstufen (2*Hoehe + Tiefe = 63cm)
translate([ 110*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2 ]) cube([ 35, 4*(Bl+Fg)-Fg+Bh, 18 ]); // 18 hoch, 27 tief
translate([ 109*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+18 ]) cube([ 35, 4*(Bl+Fg)-Fg+Bh, 18 ]);
translate([ 108*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+36 ]) cube([ 35, 4*(Bl+Fg)-Fg+Bh, 18 ]);
translate([ 107*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+54 ]) cube([ 35, 4*(Bl+Fg)-Fg+Bh, 18 ]);
translate([ 106*(Bl+Fg)+Fg, 30*(Bl+Fg), -12*(Bh+Fg)-Bw-Fg*2+72 ]) cube([ 35, 4*(Bl+Fg)-Fg+Bh, 18 ]);



//translate([ 0, -10, 0 ]) cube([1000,10,10]);










