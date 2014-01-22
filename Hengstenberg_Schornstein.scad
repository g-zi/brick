include <brick.scad>;

// Hengstenberg Schornstein

for(i=[0:2:500])
{
  translate([ 0, 0, i*(Bh+Fg) ]) brickcircle( 140-i/7, 2, 0, 360, 0, 5); // Durchmesser, Bricks, Startwinkel, Winkel, Zementkorrektur, Zementhoehe
}
