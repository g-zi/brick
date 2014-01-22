include <brick.scad>;

// Wiegehaus

// translate([ -Fg, -Fg, -Bl]) cube([ 12.5*(Bl+Fg)+Fg, 9*(Bl+Fg)+Fg, Bl-Fg ]); // Bodenplatte

// Basement
translate([ -Fg, -Fg, -Bl]) cube([ 12.5*(Bl+Fg)+Fg, (Bl+Fg), Bl-Fg ]); 
translate([ -Fg, -Fg+202, -Bl]) cube([ 12.5*(Bl+Fg)+Fg, (Bl+Fg), Bl-Fg ]); 
translate([ -Fg, -Fg, -Bl]) cube([ (Bl+Fg), 9*(Bl+Fg), Bl-Fg ]); 
translate([ -Fg+290, -Fg, -Bl]) cube([ (Bl+Fg), 9*(Bl+Fg), Bl-Fg ]); 

/*
translate([ 0, 260, -19]) rotate(a=90,v=[1,0,0]) 
{
  translate([ Bl, Bl, -Bl]) cube([ 10.5*(Bl+Fg)+Fg, 7*(Bl+Fg)+Fg, Bl-Fg ]); 
  translate([ -Fg, -Fg, -Bl*3+Fg*3]) cube([ 12.5*(Bl+Fg)+Fg, 9*(Bl+Fg)+Fg, 2*Bl-Fg*3 ]); 
}
*/

difference() 
{ union() 
{
// Schmale Seite Tuer
rotate(a=90,v=[0,0,1])
{ 
difference() { union() {
translate([ 0*(Bl+Fg), -Bl, 0]) wall(1.5,27, 0,0, 1); // 
translate([ 5*(Bl+Fg), -Bl, 0]) wall(4,27, 0,0, 1); // 
translate([ 0*(Bl+Fg), -Bl, 27*(Bh+Fg)]) wall(9,14, 0,0, 0); // 
}
translate([ 1.275*(Bl+Fg), -Bl, 23.6*(Bh+Fg) ]) bbcut(12, 10000, 0.016, 1);
}
translate([ 1.275*(Bl+Fg), -Bl, 23.6*(Bh+Fg) ]) brickbow(12, 10000, 0.016, 1);
}

// Hinten
difference() { union() {
translate([ 0.5*(Bl+Fg), 0, 0]) wall(11.5,10, 0,0, 0); // 
translate([ 0.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.5,17, 0,0, 0); // 
translate([ 8.5*(Bl+Fg), 0, 10*(Bh+Fg)]) wall(3.5,17, 0,0, 0); // 
translate([ 0.5*(Bl+Fg), 0, 27*(Bh+Fg)]) wall(11.5,6, 0,0, 1); // 
}
translate([ 3.775*(Bl+Fg), 0, 23.6*(Bh+Fg) ]) bbcut(15, 10000, 0.016, 1);
}
translate([ 3.775*(Bl+Fg), 0, 23.6*(Bh+Fg) ]) brickbow(15, 10000, 0.016, 1);

// Vorne
difference() { union() {
translate([ 0.5*(Bl+Fg), 8*(Bl+Fg), 0]) wall(11.5,10, 0,0, 0); // 
translate([ 0.5*(Bl+Fg), 8*(Bl+Fg), 10*(Bh+Fg)]) wall(3.5,17, 0,0, 0); // 
translate([ 8.5*(Bl+Fg), 8*(Bl+Fg), 10*(Bh+Fg)]) wall(3.5,17, 0,0, 0); // 
translate([ 0.5*(Bl+Fg), 8*(Bl+Fg), 27*(Bh+Fg)]) wall(11.5,6, 0,0, 1); // 
}
translate([ 3.775*(Bl+Fg), 8*(Bl+Fg), 23.6*(Bh+Fg) ]) bbcut(15, 10000, 0.016, 1);
}
translate([ 3.775*(Bl+Fg), 8*(Bl+Fg), 23.6*(Bh+Fg) ]) brickbow(15, 10000, 0.016, 1);

// Schmale Seite
rotate(a=90,v=[0,0,1])
{ 
difference() { union() {
translate([ 0*(Bl+Fg), -12.5*(Bl+Fg)+Fg, 0]) wall(9,10, 0,0, 1); // 
translate([ 0*(Bl+Fg), -12.5*(Bl+Fg)+Fg, 10*(Bh+Fg)]) wall(2.75,17, 0,0, 1); // 
translate([ 6.25*(Bl+Fg), -12.5*(Bl+Fg)+Fg, 10*(Bh+Fg)]) wall(2.75,17, 0,0, 1); // 
translate([ 0*(Bl+Fg), -12.5*(Bl+Fg)+Fg, 27*(Bh+Fg)]) wall(9,14, 0,0, 0); // 
}
translate([ 2.5*(Bl+Fg), -12.5*(Bl+Fg)+Fg, 23.6*(Bh+Fg) ]) bbcut(12, 10000, 0.016, 1);
}
translate([ 2.5*(Bl+Fg), -12.5*(Bl+Fg)+Fg, 23.6*(Bh+Fg) ]) brickbow(12, 10000, 0.016, 1);
}

}
/// Dach abschneiden ////////////////////////////////////////////////////
translate([ -Fg-Bl, 9*(Bl+Fg)-Fg+1, 30*(Bh+Fg) ]) 
rotate(a=55,v=[1,0,0]) cube([14.5*(Bl+Fg)+Fg, 70, 180]);
mirror([ 0, 1, 0 ]) translate([ -Fg-Bl, 1, 30*(Bh+Fg) ]) 
rotate(a=55,v=[1,0,0]) cube([14.5*(Bl+Fg)+Fg, 70, 180]);
/// Dach abschneiden ////////////////////////////////////////////////////

// kleine Fenster ///////////////////////////////////////////////////////////
translate([ -Fg, 4*(Bl+Fg), 32*(Bh+Fg)]) cube([ (Bl+Fg)+Fg, Bl, 4*(Bh+Fg) ]); 
translate([ 11.5*(Bl+Fg)-Fg, 4*(Bl+Fg), 32*(Bh+Fg)]) cube([ (Bl+Fg)+Fg, Bl, 4*(Bh+Fg) ]); 
// kleine Fenster ///////////////////////////////////////////////////////////

// Dach ///////////////////////////////////////////////////////////////
translate([ -Bl, -12, 29*(Bh+Fg) ]) 
rotate(a=34,v=[1,0,0]) hohlziegel( 17, 4, 2.1, 1.5); // Winkel korrigiert
mirror([ 0, 1, 0 ]) translate([ -Bl, -235, 29*(Bh+Fg) ]) 
rotate(a=34,v=[1,0,0]) hohlziegel( 17, 4, 2.1, 1.5); // Winkel korrigiert
translate([ -Bl, 4.5*(Bl+Fg)-Fg/2, 40.5*(Bh+Fg)-Fg ]) dachfirst( 10, 0.95); // Hoehe reduziert (-Fg)
// Dach ///////////////////////////////////////////////////////////////

translate([ -Bl, -18, 29.5*(Bh+Fg) ]) dachrinne( 355, 1 );
translate([ -Bl, 241, 29.5*(Bh+Fg) ]) dachrinne( 355, 1 );
}

//translate([ 10, -19, -Bl-40 ]) fallrohr( 273,14,80 );
//mirror([ 0, 1, 0 ]) translate([ 10, -242, -Bl-40 ]) fallrohr( 273,14,80 );

translate([ 315, -19, -Bl-40 ]) fallrohr( 273,30,80 );
mirror([ 0, 1, 0 ]) translate([ 315, -242, -Bl-40 ]) fallrohr( 273,30,80 );

// Tuer //////////////////////////////////////////////////////////////////////
translate([ 14, 34, -2 ]) cube([ 8,93,182 ]);

translate([ 10, 34, 0 ]) cube([ 4,12,172 ]);
translate([ 10, 115, 0 ]) cube([ 4,12,172 ]);

translate([ 12, 34, 0 ]) cube([ 2,92,30 ]);
translate([ 10, 48, 0 ]) cube([ 4,65,22 ]);
translate([ 10, 48, 25 ]) cube([ 4,65,3 ]);

translate([ 12, 48, 31 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 44 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 57 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 70 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 83 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 96 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 109 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 122 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 135 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 148 ]) cube([ 2,65,11 ]);
translate([ 12, 48, 161 ]) cube([ 2,65,11 ]);

difference() 
{
translate([ 7, 116, 80 ]) cube([ 2,5,14 ]);
translate([ 6, 118, 83 ]) cube([ 14,1,3 ]);
}
translate([ 4, 108, 89 ]) cube([ 10,12,3 ]);
// Tuer //////////////////////////////////////////////////////////////////////

// Fensterbank ///////////////////////////////////////////////////////////////
translate([ 94, -5, 71 ]) cube([ 122,32,4 ]);
translate([ 94, 196, 71 ]) cube([ 122,32,4 ]);
translate([ 283, 64, 71 ]) cube([ 32,96,4 ]);

translate([ 283, 98, 234 ]) cube([ 32,27,4 ]);
translate([ -4, 98, 234 ]) cube([ 32,27,4 ]);
// Fensterbank ///////////////////////////////////////////////////////////////

// Fenster ///////////////////////////////////////////////////////////////////
translate([ 94, 10, 74 ]) cube([ 10,6,100 ]); // Links
translate([ 97, 8, 80 ]) cube([ 4,4,92 ]); // Links

translate([ 150, 10, 74 ]) cube([ 10,6,100 ]); // Mitte
translate([ 153, 8, 80 ]) cube([ 4,4,92 ]); // Mitte

translate([ 206, 10, 74 ]) cube([ 10,6,100 ]); // Rechts
translate([ 209, 8, 80 ]) cube([ 4,4,92 ]); // Rechts

translate([ 94, 10, 166 ]) cube([ 122,6,10 ]); // Oben
translate([ 94, 8, 169 ]) cube([ 122,4,4 ]); // Oben

translate([ 94, 10, 74 ]) cube([ 122,6,10 ]); // Unten
translate([ 94, 8, 75 ]) cube([ 122,4,5 ]); // Unten
translate([ 100, 5, 80 ]) cube([ 110,5,3 ]); // Unten
// Fenster ///////////////////////////////////////////////////////////////////

// Fenster ///////////////////////////////////////////////////////////////////
translate([ 94, 206, 74 ]) cube([ 10,6,100 ]); // Links
translate([ 97, 210, 80 ]) cube([ 4,4,92 ]); // Links

translate([ 150, 206, 74 ]) cube([ 10,6,100 ]); // Mitte
translate([ 153, 210, 80 ]) cube([ 4,4,92 ]); // Mitte

translate([ 206, 206, 74 ]) cube([ 10,6,100 ]); // Rechts
translate([ 209, 210, 80 ]) cube([ 4,4,92 ]); // Rechts

translate([ 94, 206, 166 ]) cube([ 122,6,10 ]); // Oben
translate([ 94, 210, 169 ]) cube([ 122,4,4 ]); // Oben

translate([ 94, 206, 74 ]) cube([ 122,6,10 ]); // Unten
translate([ 94, 210, 75 ]) cube([ 122,4,5 ]); // Unten
translate([ 100, 213, 80 ]) cube([ 110,5,3 ]); // Unten
// Fenster ///////////////////////////////////////////////////////////////////

// Fenster ///////////////////////////////////////////////////////////////////
translate([ 294, 64, 74 ]) cube([ 6,10,100 ]); // Links
translate([ 298, 66, 80 ]) cube([ 4,4,92 ]); // Links

translate([ 294, 106, 74 ]) cube([ 6,10,100 ]); // Mitte
translate([ 298, 109, 80 ]) cube([ 4,4,92 ]); // Mitte

translate([ 294, 148, 74 ]) cube([ 6,10,100 ]); // Rechts
translate([ 298, 152, 80 ]) cube([ 4,4,92 ]); // Rechts

translate([ 294, 64, 166 ]) cube([ 6,94,10 ]); // Oben
translate([ 298, 66, 169 ]) cube([ 4,90,4 ]); // Oben

translate([ 294, 64, 74 ]) cube([ 6,94,10 ]); // Unten
translate([ 298, 64, 75 ]) cube([ 4,94,5 ]); // Unten
translate([ 300, 69, 80 ]) cube([ 5,84,3 ]); // Unten

// Fenster ///////////////////////////////////////////////////////////////////


/*/ Support for Dachrinne //////////////////////////////////////////////////
difference()
{
  union()
  {
    for (i = [ 0 : 30 : 240 ]) // Support for Dachrinne
    {
      translate([ 40+i, -18, 208]) cube([ 4,25,9 ]); // Unten
      translate([ 40+i, 217, 208]) cube([ 4,25,9 ]); // Unten
    }
  }
  union()
  {
    translate([ -Bl, -18, 29.5*(Bh+Fg) ]) dachrinne( 355, 7 );
    translate([ -Bl, 241, 29.5*(Bh+Fg) ]) dachrinne( 355, 7 );
  }
}
*/// Support for Dachrinne //////////////////////////////////////////////////

// Support /////////////////////////////////////////////////////////////
difference() 
{ 
  union() 
  {
    translate([ -17, 10, -63 ]) cube([ 40, 203, 10 ]); // Boden
    translate([ 15, 10, -54 ]) cube([ 8, 203, 32 ]); // Boden
    translate([ -2, 10, -54 ]) cube([ 8, 203, 32 ]); // Boden

    translate([ 288, 33, -63 ]) cube([ 40, 157, 10 ]); // Boden
    translate([ 305, 33, -54 ]) cube([ 8, 157, 32 ]); // Boden
    translate([ 288, 0, -63 ]) cube([ 8, 223, 40 ]); // Boden

    rotate(a=90,v=[0,0,1]) translate([ 0,-283, 0 ])
    {
      translate([ -10, 5, -63 ]) cube([ 40, 245, 10 ]); // Boden
      translate([ 15, 5, -54 ]) cube([ 8, 245, 32 ]); // Boden
      translate([ -2, 5, -54 ]) cube([ 8, 245, 32 ]); // Boden
    }
    rotate(a=90,v=[0,0,1]) translate([ 202,-283, 0 ])
    {
      translate([ -10, 5, -63 ]) cube([ 40, 245, 10 ]); // Boden
      translate([ 15, 5, -54 ]) cube([ 8, 245, 32 ]); // Boden
      translate([ -2, 5, -54 ]) cube([ 8, 245, 32 ]); // Boden
    }
  }
for (i = [ 0 : 16.1 : 340 ]) translate([-11+i, -15,-23]) rotate(a=45,v=[0,1,0]) cube([8, 355, 8]);
for (i = [ 0 : 16.9 : 350 ]) translate([-12, -7+i,-30]) rotate(a=45,v=[1,0,0]) cube([340, 8, 8]);

//translate([ -20, 104, -65 ]) cube([350, 14, 45]); // Trenner

//translate([ 100, -15, -65 ]) cube([14, 355, 45]); // Trenner
//translate([ 197, -15, -65 ]) cube([14, 355, 45]); // Trenner


}

/*// Support fuer Boden
rotate(a=90,v=[0,0,1]) translate([ 297,-320, 0 ])
{
  translate([ -35, 5, -63 ]) cube([ 65, 315, 10 ]); // Boden
  translate([ -11, 5, -54 ]) cube([ 8, 315, 32 ]); // Boden
  translate([ 22, 5, -54 ]) cube([ 8, 315, 32 ]); // Boden
}
for (i = [ 0 : 8 : 130 ]) 
{
  translate([ -Fg*-i+23, -Fg+264, -Bl-40]) cube([ 8, 8, 60 ]); // Basement
  translate([ -Fg*-i+24, -Fg+265, -Bl-30]) cube([ 6, 6, 60 ]); // Basement
}
*/// Support fuer Boden


/// Support /////////////////////////////////////////////////////////////



/*/ Support /////////////////////////////////////////////////////////////
translate([ -Fg, -Fg, -Bl-40]) cube([ 12.5*(Bl+Fg)+Fg, 9*(Bl+Fg)+Fg, 10 ]); // Basement
for (i = [ 0 : 8.065 : 160 ]) 
{
  for (j = [ 0 : 9.12 : 110 ]) 
  {
    translate([ -Fg*-i-2, -Fg*-j-2, -Bl-40]) cube([ 8, 8, 35 ]); // Basement
    translate([ -Fg*-i-1, -Fg*-j-1, -Bl-30]) cube([ 6, 6, 35 ]); // Basement
  }
}
*/// Support /////////////////////////////////////////////////////////////



/*/ Dach ///////////////////////////////////////////////////////////////
rotate(a=270,v=[0,1,0]) translate([ 16, 40, -180 ])
{
translate([ -Bl, -12, 29*(Bh+Fg) ]) 
rotate(a=35,v=[1,0,0]) hohlziegel( 17, 4, 2.1, 1.5);
mirror([ 0, 1, 0 ]) translate([ -Bl, -235, 29*(Bh+Fg) ]) 
rotate(a=35,v=[1,0,0]) hohlziegel( 17, 4, 2.1, 1.5);
translate([ -Bl, 4.5*(Bl+Fg)-Fg/2, 40.5*(Bh+Fg) ]) dachfirst( 10, 0.95);
// Dach ///////////////////////////////////////////////////////////////
translate([ -Bl, -18, 29.5*(Bh+Fg) ]) dachrinne( 355 );
translate([ -Bl, 241, 29.5*(Bh+Fg) ]) dachrinne( 355 );

// Support
difference() 
{ 
  union() 
  {
    translate([ -Bl-38, -12, 29*(Bh+Fg) ]) 
    rotate(a=35,v=[1,0,0]) 
    {
      translate([ 0, -10, 0 ]) cube([38, 160, 8]);
      translate([ -18, -30, -35 ]) cube([20, 210, 80]);
    }
    mirror([ 0, 1, 0 ]) 
    translate([ -Bl-38, -235, 29*(Bh+Fg) ])
    rotate(a=35,v=[1,0,0]) 
    {
      translate([ 0, -10, 0 ]) cube([38, 160, 8]);
      translate([ -18, -30, -35 ]) cube([20, 210, 80]);
    }
  }
  for (i = [ 0 : 14 : 260 ]) translate([-23, -20+i, 200]) rotate(a=45,v=[0,0,1]) cube([8, 8, 125]);
  translate([-80, 108, 240]) cube([55, 6, 120]); // Grundplatte teilen
  translate([-80, -70, 140]) cube([22, 360, 60]); // Grundplatte abschneiden

// Sollbruchkante
  {
    translate([-23, 110, 306]) 
    rotate(a=-35,v=[1,0,0])
    rotate(a=-45,v=[0,1,0])
    cube([8, 170, 8]);
    translate([-23, -26, 208]) 
    rotate(a=35,v=[1,0,0])
    rotate(a=-45,v=[0,1,0])
    cube([8, 170, 8]);
  }
}
// Support
}
*/// Dach ///////////////////////////////////////////////////////////////

