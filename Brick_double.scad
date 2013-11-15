// Brick dimensions
Bl = 23;    // Brick length (24)
Bw = 10.5;  // Brick width (11.5)
Bh = 5+1/3;   // Brick height (6.3)
Fg = 2;     // Fuge, space between bricks for cement (1)
2_3rdBrick = (Bw*3+Fg)/2; // 2/3rd brick lenght


module wall_LongBrick( Wl, Wf, j ) // submodule from wall
{
  if ( Wf >= 2_3rdBrick+Fg ) 
  {
    if( Wl >= Bl+Fg+Bw )
    {
      translate([ 0, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);  // letzter Stein
      translate([ 0, Bw+Fg, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);  // letzter Stein
      translate([ Fg, Fg, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bl-2*Fg, Bh ]);  // Fuge letzer Stein
    }
    else
    {
      translate([ 0, 0, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bl, Bh ]);
    }
  }
  else 
  {
    translate([ 0, 0, (Bh+Fg)*j ]) cube([ Wl, Bw, Bh ]);
    translate([ 0, Bw+Fg, (Bh+Fg)*j ]) cube([ Wl, Bw, Bh ]);
  }
  for (i = [ 2_3rdBrick+Fg : Bl+Fg : (Wf-2_3rdBrick-Fg) ])
  {
    if(Wf-2_3rdBrick-Fg >= Bl) translate([ i, 0, (Bh+Fg)*j ]) cube([ Bl, Bl, Bh ]);
  }

  if ( Wl > Bl+Fg ) 
  {
    if ( Wl-Wf <= Bl+Fg ) 
    {
      if( Wl >= Bl+Fg+Bw ) 
	{
		translate([ Wf, 0, (Bh+Fg)*j ]) cube([ Wl-Wf, Bw, Bh ]);  // letzter Stein
		translate([ Wf, Bw+Fg, (Bh+Fg)*j ]) cube([ Wl-Wf, Bw, Bh ]);  // letzter Stein
		translate([ Wf-Fg, Fg, (Bh+Fg)*j ]) cube([ Wl-Wf, Bl-2*Fg, Bh ]);  // Fuge letzer Stein
	}
      else
	{
		translate([ (Wl-Fg)/2+Fg, 0, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bw, Bh ]);  // letzter Stein
		translate([ (Wl-Fg)/2+Fg, Bw+Fg, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bw, Bh ]);  // letzter Stein
	}
    }
    else 
    {
      translate([ Wf, 0, (Bh+Fg)*j ]) cube([ Wl-Wf-2_3rdBrick-Fg, Bl, Bh ]);
      translate([ Wf+Wl-Wf-2_3rdBrick, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);  // letzter Stein
      translate([ Wf+Wl-Wf-2_3rdBrick, Bw+Fg, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);  // letzter Stein
      translate([ Wf+Wl-Wf-2_3rdBrick-Fg, Fg, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bl-2*Fg, Bh ]);  // letzter Stein
    }
  }
}

module wall(Xbrick, Zbrick, LeftCorner, RightCorner, Halfbrick) // dependencies module wall_LongBrick
{
  Wl = Xbrick*(Bl+Fg)-Fg; // Wall length
  We = (Xbrick-LeftCorner-RightCorner)*(Bl+Fg)-Fg;
  Wf = ((floor(Xbrick-1+(ceil(Xbrick)-floor(Xbrick)))*(Bl+Fg))-(Bl-2_3rdBrick));
  Ls = We-floor(Xbrick)*(Bl+Fg); // Last Stone

  for (j = [0 : Zbrick-1])
  {
    if(floor((j+Halfbrick)/2) == ((j+Halfbrick)/2)) 
    { // short Brick
      for (i=[Bw+Fg:Bw+Fg:We+Fg])
      {
        translate([ i+LeftCorner*(Bl+Fg)-Bw-Fg, 0, (Bh+Fg)*j ]) cube([ Bw, Bl, Bh ]);
      }
      translate([ We-Ls, 0, (Bh+Fg)*j ]) cube([ Ls, Bl, Bh ]); // rest of row
    }
    else
    { // long Brick
      wall_LongBrick(Wl, Wf, j);
    }
  }
  translate([LeftCorner*Bl+Fg,Fg,-Fg]) cube([We-(1-LeftCorner+1-RightCorner)*Fg, Bl-Fg*2, Zbrick*(Bh+Fg)]);
}

module wallhalf_LongBrick( Wl, Wf, j ) // submodule from wallhalf
{
  if ( Wf >= 2_3rdBrick+Fg ) 
  {
    if( Wl >= Bl+Fg+Bw )
    {
      translate([ 0, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);  // letzter Stein
    }
    else
    {
      translate([ 0, 0, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bl, Bh ]);
    }
  }
  else 
  {
    translate([ 0, 0, (Bh+Fg)*j ]) cube([ Wl, Bw, Bh ]);
  }
  for (i = [ 2_3rdBrick+Fg : Bl+Fg : (Wf-2_3rdBrick-Fg) ])
  {
    if(Wf-2_3rdBrick-Fg >= Bl) translate([ i, 0, (Bh+Fg)*j ]) cube([ Bl, Bw, Bh ]);
  }

  if ( Wl > Bl+Fg ) 
  {
    if ( Wl-Wf <= Bl+Fg ) 
    {
      if( Wl >= Bl+Fg+Bw ) 
	{
		translate([ Wf, 0, (Bh+Fg)*j ]) cube([ Wl-Wf, Bw, Bh ]);  // letzter Stein
	}
      else
	{
		translate([ (Wl-Fg)/2+Fg, 0, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bw, Bh ]);  // letzter Stein
		translate([ (Wl-Fg)/2+Fg, Bw+Fg, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bw, Bh ]);  // letzter Stein
	}
    }
    else 
    {
      translate([ Wf, 0, (Bh+Fg)*j ]) cube([ Wl-Wf-2_3rdBrick-Fg, Bw, Bh ]);
      translate([ Wf+Wl-Wf-2_3rdBrick, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);  // letzter Stein
    }
  }
}


module wallhalf(Xbrick, Zbrick, LeftCorner, RightCorner, Halfbrick) // dependencies module wall_LongBrick
{
  Wl = Xbrick*(Bl+Fg)-Fg; // Wall length
  We = (Xbrick-LeftCorner/2-RightCorner/2)*(Bl+Fg)-Fg;
  Wf = ((floor(Xbrick-1+(ceil(Xbrick)-floor(Xbrick)))*(Bl+Fg))-(Bl-2_3rdBrick));
  Ls = We-floor(Xbrick)*(Bl+Fg); // Last Stone

  for (j = [0 : Zbrick-1])
  {
    if(floor((j+Halfbrick)/2) == ((j+Halfbrick)/2)) 
    { // short Brick
      for (i=[Bw+Fg:Bw+Fg:We+Fg])
      {
        translate([ i+LeftCorner*(Bw+Fg)-Bw-Fg, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
      }
      translate([ We-Ls, 0, (Bh+Fg)*j ]) cube([ Ls, Bw, Bh ]); // rest of row
    }
    else
    { // long Brick
      wallhalf_LongBrick(Wl, Wf, j);
    }
  }
  translate([LeftCorner*Bw+Fg,Fg,-Fg]) cube([We-(1-LeftCorner+1-RightCorner)*Fg, Bw-Fg*2, Zbrick*(Bh+Fg)]);
}

//translate([ 0, 0, 0 ]) wallhalf( 2.5, 10, 0,0 , 1);


module reiter(Xbrick, MoveCement, MoveReiter, AdjustReiter, Halfbrick) 
{
  Wl = Xbrick*(Bl+Fg)-Fg; // Wall length
  Ls = Wl-floor(Xbrick)*(Bl+Fg)-(Halfbrick)*(Bw+Fg); // Last Stone

  union() 
  { 
    translate([ 0, 0, Bh*2+Fg*2 ]) cube([ Bw, Bl, Bh ]); // First Stone top row
    for (i=[Bw+Fg+(1-Halfbrick)*(Bw+Fg):Bw+Fg+(1-Halfbrick)*(Bw+Fg):Wl-Bw]) 
    { translate([ i-(1-Halfbrick)*(Bw+Fg), 0, Bh*2+Fg*2 ]) cube([ Bw+(1-Halfbrick)*(Bw+Fg), Bl, Bh ]); }
    translate([ Wl-Ls-Bw-Fg, 0, Bh*2+Fg*2 ]) cube([ Ls+Bw+Fg, Bl, Bh ]); // Last Stone top row
    translate([ 0, 0+Fg, Bh*2+Fg*2 ]) cube([ Wl, Bl-2*Fg, Bh ]); // Fuge top row

    for (i=[Bw+Fg+(1-Halfbrick)*(Bw+Fg):Bw+Fg+(1-Halfbrick)*(Bw+Fg):Wl+Fg])
    { translate([ i-Bw-Fg-(1-Halfbrick)*(Bw+Fg), 0, 0 ]) cube([ Bw+(1-Halfbrick)*(Bw+Fg), Bl, Bh ]); }
    translate([ Wl-Ls-Halfbrick*(Bw+Fg), 0, 0 ]) cube([ Ls+Halfbrick*(Bw+Fg), Bl, Bh ]); // Last Stone bottom row
    translate([ 0, 0+Fg, 0 ]) cube([ Wl, Bl-2*Fg, Bh ]); // Fuge bottom row

    for (i = [ MoveReiter : sqrt(((Bl+Fg)*(Bl+Fg))/2)+AdjustReiter : Xbrick*(Bl+Fg) ]) 
    {
      translate([ i, -Fg*0.7, Bh+Fg]) rotate(45) cube([2_3rdBrick, Bw, Bh]);
      translate([ i, Fg*0.7, Bh]) rotate(45) cube([2_3rdBrick, Bw+Fg+AdjustReiter, Bh+Fg*2]);
    }

    translate([ 0, Fg-MoveCement, -Fg]) cube([Xbrick*(Bl+Fg)-Fg, Bl-Fg*2+MoveCement, Fg]); // Zement Boden
  }
}

//translate([ 0, 0, 0 ]) reiter( 4.5, -4, 0,0, 0);


module brickbow(Bricks, Radius, Space, Half) 
{ // Alpha = Kreisbogen / ( Radius * 2 * 3.14 ) * 360
  Alpha = (Bh / ((Radius-Bw) * 2 * 3.14 ) * 360) + Space;
  Kreisbogen = (Radius+Fg) * 2 * 3.14 * (Alpha / 360)-Fg*4;

  // s = 2 * r * sin * (Alpha/2)
  Segmentwidth = 2 * (Radius-Bl/2) * sin( Alpha * Bricks / 2 );
  // h = r * ( 1 - cos ( Alpha / 2 ) )
  Segmentheight = (Radius-Bl/2) * ( 1 - cos ( Alpha * Bricks / 2 ));

  translate([Segmentwidth/2, (Bw+Fg)/2, -Radius+Segmentheight+Bl/2])
  union() 
  {
    rotate([0,-Alpha*(Bricks-1)/2,0])
    for ( i = [0 : Bricks-1] )
    {
      if(round(i/Half)!=i/Half)
      {
        rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Bw/2+Fg/2]) cube([Bh, Bl, Bw],center = true);
        rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius-Bw/2-Fg/2]) cube([Bh, Bl, Bw],center = true);
      }
      if(round(i/Half)==i/Half) rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius]) cube([Bh, Bl, Bl],center = true);
      rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg/2]) cube([Bh+Fg*2, Bl-Fg*2, Bl+Fg],center = true);
    }
    rotate([0,-Alpha*(Bricks-1)/2+Alpha/2,0])
    for ( i = [0 : Bricks-2] )
    { rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg]) cube([Kreisbogen, Bl-Fg*2, Bl],center = true); }
  }
}

module bbcut(Bricks, Radius, Space, Half) 
{ // Alpha = Kreisbogen / ( Radius * 2 * 3.14 ) * 360
  Alpha = (Bh / ((Radius-Bw) * 2 * 3.14 ) * 360) + Space;
  Kreisbogen = (Radius+Fg) * 2 * 3.14 * (Alpha / 360)-Fg*4;

  // s = 2 * r * sin * (Alpha/2)
  Segmentwidth = 2 * (Radius-Bl/2) * sin( Alpha * Bricks / 2 );
  // h = r * ( 1 - cos ( Alpha / 2 ) )
  Segmentheight = (Radius-Bl/2) * ( 1 - cos ( Alpha * Bricks / 2 ));

  translate([Segmentwidth/2, (Bw+Fg)/2, -Radius+Segmentheight+Bl/2])
  union() 
  {
    rotate([0,-Alpha*(Bricks-1)/2,0])
    for ( i = [0 : Bricks-1] )
    { rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg/2]) cube([Bh+Fg*2, Bl, Bl+Fg],center = true); }

    rotate([0,-Alpha*(Bricks-1)/2+Alpha/2,0])
    for ( i = [0 : Bricks-2] )
    { rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg]) cube([Kreisbogen, Bl, Bl],center = true); }
  }
}

module basement(LeftFlat, Xbrick, RightFlat)
{
  if(LeftFlat==1) 
  {
    translate([ 0, 0, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ 0, Bw+Fg, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ 0, 0, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
    translate([ 0, Bw+Fg, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
  }
  for (i = [LeftFlat*(Bl+Fg) : Bh+Fg : (Xbrick-1)*(Bh+Fg)+Fg-RightFlat*(Bl+Fg) ])
  {
    translate([ i, 0, 0 ]) cube([ Bh, Bl, Bw ]);
  }

  if(RightFlat==1) 
  {
    translate([ (Xbrick)*(Bh+Fg)-Bl-Fg, 0, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ (Xbrick)*(Bh+Fg)-Bl-Fg, Bw+Fg, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ (Xbrick)*(Bh+Fg)-Bl-Fg, 0, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
    translate([ (Xbrick)*(Bh+Fg)-Bl-Fg, Bw+Fg, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
  }
  translate([ Fg, Fg, 0 ]) cube([ Xbrick*(Bh+Fg)-3*Fg, Bl-2*Fg, Bw ]);
}


module rooftile(Xbrick, Zbrick, OverlapX, OverlapZ)
{
  for (j=[0:1:Zbrick-1])
  {
    if (j/2 != floor(j/2)) translate([ 0, j*(Bl+Bw+OverlapZ), j*Bh ]) difference() 
    {
      cube([ (Bl+Fg)*0.6, Bl*2, Bh+Fg/2 ]);
      rotate(a=[90,0,0]) translate([ Bw-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2, r=Bw/3);
      translate([ 0,0,Bw/2-Fg ]) rotate(a=[45,0,0]) cube([ (Bl+Fg)*0.6, Bw, Bw ]); 
    }

    for (i = [ ( j/2 == floor(j/2) ? 0 : 0.5) : 1 : Xbrick-1 ])
    {

      translate([ i*(Bl+Fg*2+OverlapX), j*(Bl+Bw+OverlapZ), j*Bh ]) 
      {
        translate([ Bl*0.6, Bh,Bh+Fg/2 ]) cube([ Fg, Bl+2_3rdBrick, Fg/2 ]);
        difference() 
        {
          cube([ (Bl+Fg)*1.2, Bl*2, Bh+Fg/2 ]);
          rotate(a=[90,0,0]) translate([ Bw-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2, r=Bw/3);
          rotate(a=[90,0,0]) translate([ Bl-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2, r=Bw/3);
          translate([0,0,Bw/2-Fg]) rotate(a=[45,0,0]) cube([ (Bl+Fg)*1.2, Bw, Bw ]);
        }
      }
    }

    if (j/2 != floor(j/2)) translate([ (Xbrick-1)*(Bl+Fg*2+OverlapX)+Bw+Fg*1.4, j*(Bl+Bw+OverlapZ), j*Bh ]) difference() 
    {
      cube([ 2_3rdBrick, Bl*2, Bh+Fg/2 ]);
      rotate(a=[90,0,0]) translate([ Bw-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2 , r=Bw/3);
      translate([ 0,0,Bw/2-Fg ]) rotate(a=[45,0,0]) cube([ 2_3rdBrick, Bw, Bw ]);
    }
  }
}


//translate([ 0, 0, 0 ]) rooftile( 5, 5, 1, 0);
//translate([ 0, 0, 0 ]) basement( 1, 8, 1);
//translate([ 0, 0, 0 ]) wall( 14 , 20, 1,0, 0);
//translate([ 0, 0, 0 ]) bbcut( 12, 180, 0.2, 2 );
//translate([ 0, 0, 0 ]) brickbow( 12, 180, 0.2, 2 );
//translate([ 0, 0, 0 ]) reiter( 5, -4, 0, 0);







