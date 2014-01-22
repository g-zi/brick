include <brick.scad>;

// Dach ///////////////////////////////////////////////////////////////
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


