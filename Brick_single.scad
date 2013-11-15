// Brick dimensions
Bl = 23;    // Brick length (24)
Bw = 10.5;  // Brick width (11.5)
Bh = 5.3;   // Brick height (6.3)
Fg = 2;     // Fuge, space between bricks for cement
2_3rdBrick = (Bw*3+Fg)/2; // 2/3rd brick lenght

module wall1(Xbrick, Zbrick, LeftCorner, RightCorner, Halfbrick) 
{  
  Wl = floor(Xbrick)*(Bl+Fg)-Fg + (Xbrick-floor(Xbrick))*Bl+(ceil(Xbrick)-Xbrick)*Fg;
  We = (floor((Wl-2_3rdBrick-Fg)/(Bw+Fg))-1)*(Bw+Fg)+2_3rdBrick+Fg;
  Wf = (floor((Wl-2*(Bw-Fg))/(Bl+Fg))-Fg)*(Bl+Fg)+Bw+Fg;

  for (j = [0 : Zbrick-1])
  {
    if(floor((j+Halfbrick)/2) == ((j+Halfbrick)/2)) 
    { // short Brick
      if(Xbrick < 2)
      {
        if(Xbrick ==1)
          translate([ 0, 0, (Bh+Fg)*j ]) cube([ Xbrick*Bl, Bw, Bh ]);
        else
        {
          translate([ 0, 0, (Bh+Fg)*j ]) cube([ (Xbrick*Bl)/2, Bw, Bh ]);
          translate([ (Xbrick*Bl)/2+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-(Xbrick*Bl)/2-Fg, Bw, Bh ]);
        }
      }
      else
      {
        translate([ 0, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);
        for (i = [ 2_3rdBrick+Fg : Bw+Fg : (Wl-Bl) ]) 
          translate([ i, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
        translate([ We, 0, (Bh+Fg)*j ]) cube([ Wl-We, Bw, Bh ]);      
      }
    }
    else
    { // long Brick

      if(LeftCorner==0) translate([ 0, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);

      if(floor((j+1-Halfbrick)/4)==(j+1-Halfbrick)/4) translate([ Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);

      if(Xbrick >= 2)
        for (i = [ Bw+Fg : Bl+Fg : Wf ]) 
        {
          if(Halfbrick <= 1)
            if(floor((j+1-Halfbrick)/4)==(j+1-Halfbrick)/4)
            {
              if( i < (Xbrick-1)*(Bl+Fg)-(Bw+Fg) )
                translate([ i+Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Bl, Bw, Bh ]);
              else
                translate([ i+Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
            }
            else
              translate([ i, 0, (Bh+Fg)*j ]) cube([ Bl, Bw, Bh ]);
          else
          {
           if(Halfbrick == 2 && floor(j/2)/2 == floor(floor(j/2)/2) || Halfbrick == 3 && floor(j/2)/2 == floor(floor(j/2)/2))
            {
              translate([ i, 0, (Bh+Fg)*j ]) cube([ Bl, Bw, Bh ]);
            }
            else
            {
              translate([ i, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
              translate([ i+Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
            }
          }
        }
        if(floor((j+1-Halfbrick)/4)==(j+1-Halfbrick)/4)
          translate([ Wf+Bl+Fg+Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-Wf-Bl-Fg-Bw-Fg-Bw-Fg, Bw, Bh ]);      
        else
          translate([ Wf+Bl+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-Wf-Bl-Fg-Bw-Fg, Bw, Bh ]);      
        if(RightCorner==0) translate([ Wl-Bw, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);      
    }
  }
translate([LeftCorner*Bw+Fg,Fg,0]) cube([(Xbrick-LeftCorner-RightCorner)*(Bl+Fg)-Fg*3+LeftCorner+RightCorner+LeftCorner*(Bw+Fg)+RightCorner*(Bw+Fg), Bw-Fg*2, Zbrick*(Bh+Fg)]);
}

//translate([ 0, 0, 0 ]) wall1( 6.5 , 10, 1,0, 0);


module wall_ShortBrick( Wl, We, j, LeftCorner, RightCorner ) // submodule from wall
{
  if(LeftCorner==0) translate([ 0, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
  
  if ( Wl > 2*Bl+Bw+Fg+Fg || Wl == 2*Bl+Fg  || Wl == 2*(Bl+Fg)+Bw )
  {
    for (i = [ Bw+Fg : Bw+Fg : We-(Wl-We-Bw-2*(Bh+Fg)) ])
    {
      translate([ i, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
    }
  }

  if ( We > 0 )
  {
    if ( (Wl-We-Bh-Fg-Bw) > Bw+Fg )
    {
      if ( Wl > 2*Bl)
      {
        if (Wl-We-Bw-2*(Bh+Fg) <= Bw)
        {
          translate([ We+Bh-Bw-Fg, 0, (Bh+Fg)*j ]) cube([ Wl-We-Bw-2*(Bh+Fg), Bw, Bh ]);      
          translate([ (We+Bh-Bw-Fg)+(Wl-We-Bw-2*(Bh+Fg)+Fg), 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
          translate([ Wl-Bh-Bw-Fg, 0, (Bh+Fg)*j ]) cube([ Bh, Bw, Bh ]);      
        }
        else
        {
          translate([ We+Bh-Bw-Fg, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);      
          translate([ We+Bh, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);      
          translate([ We+Bh+Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-(We+Bh+Bw+Fg+Bw+Fg), Bw, Bh ]);      
        }
      }
      else
      {
        if (Wl-We-Bw-Bh-Fg < Bw+Bh ) translate([ Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-We-Bw-1*(Bh+Fg), Bw, Bh ]);      
        else
        {
          translate([ Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-We-Bw-2*(Bh+Fg), Bw, Bh ]);      
          translate([ Wl-Bh-Bw-Fg, 0, (Bh+Fg)*j ]) cube([ Bh, Bw, Bh ]);      
        }
      }
    }
    else
    {
      translate([ We+Bh, 0, (Bh+Fg)*j ]) cube([ Wl-We-Bh-Fg-Bw, Bw, Bh ]);      
    }
  }
  else
  {
    translate([ Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-2*(Bw+Fg), Bw, Bh ]);      
  }
      
  if(RightCorner==0) 
  {
    if ( Wl > Bl ) translate([ Wl-Bw, 0, (Bh+Fg)*j ]) cube([ Bw, Bw, Bh ]);
    else translate([ Bw+Fg, 0, (Bh+Fg)*j ]) cube([ Wl-Bw-Fg, Bw, Bh ]);
  }
}

module wall_LongBrick( Wl, Wf, j ) // submodule from wall
{
  if ( Wf >= 2_3rdBrick+Fg ) 
  {
    if( Wl >= Bl+Fg+Bw )
    {
      translate([ 0, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]);
    }
    else
    {
      translate([ 0, 0, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bw, Bh ]);
    }
  }
  else translate([ 0, 0, (Bh+Fg)*j ]) cube([ Wl, Bw, Bh ]);

  for (i = [ 2_3rdBrick+Fg : Bl+Fg : (Wf-2_3rdBrick-Fg) ])
  {
    if(Wf-2_3rdBrick-Fg >= Bl) translate([ i, 0, (Bh+Fg)*j ]) cube([ Bl, Bw, Bh ]);
  }

  if ( Wl > Bl+Fg ) 
  {
    if ( Wl-Wf <= Bl+Fg ) 
    {
      if( Wl >= Bl+Fg+Bw ) translate([ Wf, 0, (Bh+Fg)*j ]) cube([ Wl-Wf, Bw, Bh ]);  // letzter Stein
      else translate([ (Wl-Fg)/2+Fg, 0, (Bh+Fg)*j ]) cube([ (Wl-Fg)/2, Bw, Bh ]);  // letzter Stein
    }
    else 
    {
      translate([ Wf, 0, (Bh+Fg)*j ]) cube([ Wl-Wf-2_3rdBrick-Fg, Bw, Bh ]);
      translate([ Wf+Wl-Wf-2_3rdBrick, 0, (Bh+Fg)*j ]) cube([ 2_3rdBrick, Bw, Bh ]); 
    }
  }
}

module wall(Xbrick, Zbrick, LeftCorner, RightCorner, Halfbrick) // dependencies module wall_ShortBrick and wall_LongBrick
{
  Wl = floor(Xbrick)*(Bl+Fg)-Fg + (Xbrick-floor(Xbrick))*Bl+(ceil(Xbrick)-Xbrick)*Fg;
  We = (floor(2*(Xbrick-1))*(Bw+Fg)-Bh);
  Wf = ((floor(Xbrick-1+(ceil(Xbrick)-floor(Xbrick)))*(Bl+Fg))-(Bl-2_3rdBrick));

  for (j = [0 : Zbrick-1])
  {
    if(floor((j+Halfbrick)/2) == ((j+Halfbrick)/2)) 
    {
      if(floor((j+Halfbrick)/4)==(j+Halfbrick)/4)
      { // short Brick
        wall_ShortBrick( Wl, We, j, LeftCorner, RightCorner );
      }
      else
      {
        translate([ Wl, 0, 0 ]) mirror ([ 1, 0, 0 ]) wall_ShortBrick( Wl, We, j, RightCorner, LeftCorner );
      }
    }

    else

    { // long Brick
      if(floor((j+1-Halfbrick)/4)!=(j+1-Halfbrick)/4)
      {
        wall_LongBrick(Wl,Wf,j);
      }
      else
      {
        translate([ Wl, 0, 0 ]) mirror ([ 1, 0, 0 ]) wall_LongBrick(Wl,Wf,j);
      }
    }
  }
translate([LeftCorner*Bw+Fg,Fg,0]) cube([(Xbrick-LeftCorner-RightCorner)*(Bl+Fg)-Fg*3+LeftCorner+RightCorner+LeftCorner*(Bw+Fg)+RightCorner*(Bw+Fg), Bw-Fg*2, Zbrick*(Bh+Fg)]);
}

//translate([ 0, 0, 0 ]) wall( 6.5 , 10, 1,0, 0);


module reiter(Xbrick, MoveCement, Movebrick, Halfbrick) 
{
  Wl = floor(Xbrick)*(Bl+Fg)-Fg + (Xbrick-floor(Xbrick))*Bl+(ceil(Xbrick)-Xbrick)*Fg;
  We = (floor((Wl-Fg)/(Bl+Fg)))*(Bl+Fg);
  Wf = (floor((Wl-2*(Bw-Fg))/(Bl+Fg))-1)*(Bl+Fg)+Bw+Fg;
echo(Xbrick-floor(Xbrick));
    union() 
    {
      for (i = [0 : Xbrick-1]) 
      {
        if( Halfbrick==0 )
        {
          translate([ (Bl+Fg)*i, 0, 0]) cube([Bl, Bw, Bh]);
          translate([ (Bl+Fg)*i+Bw, Fg, Bh*2+Fg*2]) cube([Fg, Bw-Fg*2, Bh]); 
        }
        else
        {
          translate([ (Bl+Fg)*i, 0, 0]) cube([Bw, Bw, Bh]);
          translate([ (Bl+Fg)*i+Bw+Fg, 0, 0]) cube([Bw, Bw, Bh]);
          translate([ (Bl+Fg)*i+Bw, Fg, 0]) cube([Fg, Bw-Fg*2, Bh]); 
          translate([ (Bl+Fg)*i+Bw, Fg, Bh*2+Fg*2]) cube([Fg, Bw-Fg*2, Bh]); 
        }
      }

      translate([ (Bl+Fg)*(Xbrick-1)+Bw+Fg, 0, 0]) cube([Bw, Bw, Bh]);
      translate([ (Bl+Fg)*(Xbrick-1)+Bw, Fg, 0]) cube([Fg, Bw-Fg*2, Bh]); 


      for (i = [0 : Xbrick*1.5-Movebrick]) 
      {
        translate([ (Bl+Fg)/1.5*i-Fg/2+Bw*0.725*Movebrick, -Fg*0.7, Bh+Fg]) rotate(45) cube([Bw+Fg, Bw, Bh]);
        translate([ (Bl+Fg)/1.5*i-Fg/2+Bw*0.725*Movebrick, Fg*0.7, Bh]) rotate(45) cube([Bw+Fg, Bw, Bh+Fg*2]);
      }
      for (i = [0 : Xbrick-2]) 
      {
        if( Halfbrick==0 )
        {
          translate([ (Bl+Fg)*i+(Bw+Fg), 0, Bh*2+Fg*2]) cube([Bl, Bw, Bh]); 
          translate([ (Bl+Fg)*i+Bl, Fg, 0]) cube([Fg, Bw-Fg*2, Bh]);
        }
        else
        {
          translate([ (Bl+Fg)*i+(Bw+Fg), 0, Bh*2+Fg*2]) cube([Bw, Bw, Bh]); 
          translate([ (Bl+Fg)*i+2*(Bw+Fg), 0, Bh*2+Fg*2]) cube([Bw, Bw, Bh]); 
          translate([ (Bl+Fg)*i+Bl, Fg, 0]) cube([Fg, Bw-Fg*2, Bh]);
          translate([ (Bl+Fg)*i+Bl, Fg, Bh*2+Fg*2]) cube([Fg, Bw-Fg*2, Bh]);
        }
      }
      translate([ 0, 0, Bh*2+Fg*2]) cube([Bw, Bw, Bh]);
      translate([ 0, Fg-MoveCement, 3*Bh+Fg*2]) cube([Xbrick*(Bl+Fg)-Fg, Bw-Fg*2, Fg]); 
      translate([ (Bl+Fg)*(Xbrick-1)+Bw+Fg, 0, Bh*2+Fg*2]) cube([Bw, Bw, Bh]);
      translate([ (Bl+Fg)*(Xbrick-1), 0, Bh*2+Fg*2]) cube([Bw, Bw, Bh]);
      translate([ (Bl+Fg)*(Xbrick-1)+Bw, Fg, Bh*2+Fg*2]) cube([Fg, Bw-Fg*2, Bh]); 
    }
}


module brickbow(Bricks, Radius, Space, Half) 
{ // Alpha = Kreisbogen / ( Radius * 2 * 3.14 ) * 360
  Alpha = (Bh / ((Radius-Bw) * 2 * 3.14 ) * 360) + Space;
  Kreisbogen = (Radius+Fg) * 2 * 3.14 * (Alpha / 360)-Fg*4;

  // s = 2 * r * sin * (Alpha/2)
  Segmentwidth = 2 * (Radius-Bl/2) * sin( Alpha * Bricks / 2 );
  // h = r * ( 1 - cos ( Alpha / 2 ) )
  Segmentheight = (Radius-Bl/2) * ( 1 - cos ( Alpha * Bricks / 2 ));

  translate([Segmentwidth/2,0,-Radius+Segmentheight+Bl/2])
  union() 
  {
    rotate([0,-Alpha*(Bricks-1)/2,0])
    for ( i = [0 : Bricks-1] )
    {
      if(round(i/Half)!=i/Half)
      {
        rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Bw/2+Fg/2]) cube([Bh, Bw, Bw],center = true);
        rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius-Bw/2-Fg/2]) cube([Bh, Bw, Bw],center = true);
      }
      if(round(i/Half)==i/Half)
        rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius]) cube([Bh, Bw, Bl],center = true);
      rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg/2]) cube([Bh+Fg*2, Bw-Fg*2, Bl+Fg],center = true);
    }
    rotate([0,-Alpha*(Bricks-1)/2+Alpha/2,0])
    for ( i = [0 : Bricks-2] )
    {
      rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg]) cube([Kreisbogen, Bw-Fg*2, Bl],center = true);
    }
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

  translate([Segmentwidth/2,0,-Radius+Segmentheight+Bl/2])
  union() 
  {
    rotate([0,-Alpha*(Bricks-1)/2,0])
    for ( i = [0 : Bricks-1] )
      rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg/2]) cube([Bh+Fg*2, Bw, Bl+Fg],center = true);

    rotate([0,-Alpha*(Bricks-1)/2+Alpha/2,0])
    for ( i = [0 : Bricks-2] )
      rotate([0,i*Alpha,0]) translate([0, Bw/2, Radius+Fg]) cube([Kreisbogen, Bw, Bl],center = true);
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

//translate([ 0, 0, 0 ]) wall( 14 , 20, 0,0, 0);
//translate([ 0, 0, 0 ]) reiter( 4.5, -4, 0, 0 );
//translate([ 0, 0, 0 ]) bbcut( 19, 180, 0.2, 2 );
//translate([ 0, 0, 0 ]) brickbow( 12, 180, 0.2, 2 );







