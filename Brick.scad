// Brick dimensions
Bl = 23;    // Brick length (24)
Bw = 10.5;  // Brick width (11.5)
Bh = 5+1/3;   // Brick height (6.3)
Fg = 2;     // Fuge, space between bricks for cement (1)
2_3rdBrick = (Bw*3+Fg)/2; // 2/3rd brick lenght
Pi = 3.14159265358979323846 ;


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

module wall(Xbrick, Zbrick, LeftCorner=0, RightCorner=0, Halfbrick=0) ///////////////////////////////////////
// dependencies module wall_LongBrick
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


module wallhalf(Xbrick, Zbrick, LeftCorner=0, RightCorner=0, Halfbrick=0) ///////////////////////////////////
// dependencies module wall_LongBrick
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


module reiter(Xbrick, MoveCement=0, MoveReiter=0, AdjustReiter=0, Halfbrick=0)  /////////////////////////////
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



module brickbow(Bricks, Radius, Space=0, Half=1, Thick=Bl, Height=Bl, Width=Bh, Cement=1) //////////////////////////////////////////////////////
{ // Alpha = Kreisbogen / ( Radius * 2 * Pi ) * 360
  Alpha = (Width / ((Radius-Height/2) * 2 * Pi ) * 360) + Space;

  // s = 2 * r * sin * (Alpha/2)
  Segmentwidth = 2 * (Radius-Height/2) * sin( Alpha * Bricks / 2 );
  // h = r * ( 1 - cos ( Alpha / 2 ) )
  Segmentheight = (Radius-Height/2) * ( 1 - cos ( Alpha * Bricks / 2 ));

  translate([Segmentwidth/2, Thick/2, -Radius+Segmentheight+Height/2])
  union() 
  {
    rotate([0,-Alpha*(Bricks-1)/2,0])
    for ( i = [0 : Bricks-1] )
    {
      if(round(i/Half)!=i/Half)
      {
        rotate([0,i*Alpha,0]) translate([0, 0, Radius+(Height-Fg)/4+Fg/2]) cube([Width, Thick, (Height-Fg)/2],center = true);
        rotate([0,i*Alpha,0]) translate([0, 0, Radius-(Height-Fg)/4-Fg/2]) cube([Width, Thick, (Height-Fg)/2],center = true);
      }
      if(round(i/Half)==i/Half) rotate([0,i*Alpha,0]) translate([0, 0, Radius]) cube([Width, Thick, Height],center = true);
      if(Cement==1) rotate([0,i*Alpha,0]) translate([0, 0, Radius+Fg/2]) cube([Width+Fg*2, Thick-Fg*2, Height+Fg],center = true);
    }
  }
}
//translate([ 0, 0, 0 ]) brickbow( 10, 50, 0.2, 2, Bl, Bl, Bh, 1 ); 
// Xn, Radius, Zwischenraum, halbe Ziegel, Dicke, Hoehe, Ziegelbreite, Zement


module bbcut(Bricks, Radius, Space=0, Half=0, Thick=Bl+Fg*2, Height=Bl, Width=Bh) ///////////////////////////////////////////////////////////////////////
{ // Alpha = Kreisbogen / ( Radius * 2 * 3.14 ) * 360
  Alpha = (Width / ((Radius-Height/2) * 2 * Pi ) * 360) + Space;

  // s = 2 * r * sin * (Alpha/2)
  Segmentwidth = 2 * (Radius-Height/2) * sin( Alpha * Bricks / 2 );
  // h = r * ( 1 - cos ( Alpha / 2 ) )
  Segmentheight = (Radius-Height/2) * ( 1 - cos ( Alpha * Bricks / 2 ));

  translate([Segmentwidth/2, Thick/2-Fg, -Radius+Segmentheight+Height/2])
  union() 
  {
    rotate([0,-Alpha*(Bricks-1)/2,0])
    for ( i = [0 : Bricks-1] )
    { rotate([0,i*Alpha,0]) translate([0, 0, Radius+Fg/2]) cube([Width+Fg*2, Thick-Fg*2, Height+Fg],center = true); }
  }
}
//translate([ 0, 0, 0 ]) bbcut( 10, 50, 0.2, Bl, Bl, Bh ); // Xn, Radius, Zwischenraum, halbe Ziegel, Dicke, Hoehe, Ziegelbreite, Zement
//translate([ 0, 0, 0 ]) bbcut( 18, 120, 0.72 );
//translate([ 0, 0, 0 ]) brickbow( 18, 120, 0.72,2 );



module brickcircle( Radius, Bricks, r1=0, r2=360, Corr=0, Zement=0, Blx=Bl, Bwx=Bw, Bhx=Bh ) ///////////////////////////////
{ // dependencies module sector
//echo("Winkel", 2*asin((Bh+Fg)/(2*Radius)) );
//echo("tan a = ", Radius-sqrt(Radius*Radius- (Bh/2)*(Bh/2)   ));

//  Corr=Radius-sqrt(Radius*Radius-(Bh/2)*(Bh/2));
//  Winkel=2*asin((Bh+Fg)/(2*(Radius)))+Corr;
//  Winkel=asin((Bh+Fg+0.1)/Radius);
//mod=Umfang%(Bh+Fg);

r1=r1-r1*2; // im Uhrzeigersinn
r2=r2-r2*2; // im Uhrzeigersinn

Umfang=Pi*Radius*2;
Anzahl=(Umfang-Umfang%(Bwx+Fg))/(Bwx+Fg);
Winkel=-360/Anzahl;


  for ( j = [ 0 : 1 : Bricks-1 ]) {
    for ( i = [ r1 : Winkel : r2 ]) {
      rotate([0,0, Winkel*(j%2)/2+i ]) translate([0, Radius-Blx/2, (Bhx+Fg)*j+(Bhx)/2+Fg]) cube([Bwx,Blx,Bhx], center=true );}}

  if((r1 == 0) && (r2 == -360)) {
    difference() {
      cylinder(h=(Bhx+Fg)*Bricks-Fg+Zement, r=Radius-Fg, $fn=Radius*2 );
      translate([ 0, 0, -1 ]) cylinder(h=(Bhx+Fg)*Bricks-Fg+2+Zement, r=Radius+Fg-Blx, $fn=Radius*2 );}
}
  else {
    if(r2-r1 >= -177) { 
      difference() {
        rotate([0,0,r1-Winkel/4+Corr]) sector(Radius-Fg, r2-r1+Winkel/2-Corr, (Bhx+Fg)*Bricks-Fg+Zement);
        translate([ 0, 0, -1 ]) rotate([0,0,r1-Winkel/4+0.1+Corr]) sector(Radius+Fg-Blx, r2-r1+Winkel/2-0.2-Corr, (Bhx+Fg)*Bricks+Zement);}}
    else {    
      difference() {
        rotate([0,0,r1-Winkel/4+Corr]) sector(Radius-Fg, -177-Winkel/2-Corr, (Bhx+Fg)*Bricks-Fg+Zement);
        translate([ 0, 0, -1 ]) rotate([0,0,r1-Winkel/4+0.1+Corr]) sector(Radius+Fg-Blx, -177-Winkel/2-0.2-Corr, (Bhx+Fg)*Bricks+Zement);}
      difference() {
        rotate([0,0,-177+r1-Winkel+Corr]) sector(Radius-Fg, 177+r2-r1+Winkel-Corr, (Bhx+Fg)*Bricks-Fg+Zement);
        translate([ 0, 0, -1 ]) rotate([0,0,-177+r1-Winkel+0.1+Corr]) sector(Radius+Fg-Blx, 177+r2-r1+Winkel-0.2-Corr, (Bhx+Fg)*Bricks+Zement);}}}
}
//translate([ 0, 0, 0 ]) brickcircle( 200, 5, 0, 360, 0, 20); // Radius, Bricks, Startwinkel, Winkel, Zementkorrektur, Zementhoehe

module pie_slice(Radius, Winkel, Height, Step=10) {
  for(Theta = [0:Step:Winkel-Step]) {
    linear_extrude(Height)
      polygon(points=[[0,0],
        [Radius*cos(Theta+Step) ,Radius*sin(Theta+Step)],
        [Radius*cos(Theta),Radius*sin(Theta)]]);
  }
}
//pie_slice(100,260,11); // Radius, Winkel, Height, Step

module sector(Radius, Winkel, Height) 
{  linear_extrude(Height) intersection() 
  { circle(Radius);
    rotate([0,0,90+Winkel/2]) polygon(points = [[0, 0],
    [1000 * Radius * cos(Winkel / 2),  1000 * Radius * sin(Winkel / 2)],
    [1000 * Radius * cos(Winkel / 2), -1000 * Radius * sin(Winkel / 2)],]);
  }
}
//sector(100,160,11); // Radius, Winkel, Height



module basement(LeftFlat, Xbrick, RightFlat, Adjust=0) ////////////////////////////////////////////////////////////////
{
  if(LeftFlat==1) 
  {
    translate([ 0, 0, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ 0, Bw+Fg, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ 0, 0, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
    translate([ 0, Bw+Fg, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
  }
  for (i = [0 : Bh+Fg+Adjust/(Xbrick-1) : (Xbrick-1)*(Bh+Fg)+Fg+Adjust ])
  {
    translate([ i+LeftFlat*(Bl+Fg), 0, 0 ]) cube([ Bh, Bl, Bw ]);
  }

  if(RightFlat==1) 
  {
    translate([ LeftFlat*(Bl+Fg)+(Xbrick)*(Bh+Fg)+Adjust, 0, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ LeftFlat*(Bl+Fg)+(Xbrick)*(Bh+Fg)+Adjust, Bw+Fg, 0 ]) cube([ Bl, Bw, Bw-Bh-Fg ]);
    translate([ LeftFlat*(Bl+Fg)+(Xbrick)*(Bh+Fg)+Adjust, 0, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
    translate([ LeftFlat*(Bl+Fg)+(Xbrick)*(Bh+Fg)+Adjust, Bw+Fg, Bw-Bh ]) cube([ Bl, Bw, Bh ]);
  }
  translate([ Fg, Fg, -Fg ]) cube([ LeftFlat*(Bl+Fg)+RightFlat*(Bl+Fg)+Xbrick*(Bh+Fg)-3*Fg+Adjust, Bl-2*Fg, Bw+Fg ]);
}
//translate([ 0, 0, -Bw ]) basement( 1, 10, 1, 0);


module rooftile(Xbrick, Zbrick, OverlapX=0, OverlapZ=0) /////////////////////////////////////////////////////
{ //Doppelmuldenfalzziegel
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



module dachziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0, Form=0) /////////////////////////////////////////////////////
{
  if(Form==0) doppelhohlziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0);
  if(Form==1) hohlziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0);
  if(Form==2) rundziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0);
}
//translate([ 0, 0, 0 ]) dachziegel( 5, 5, 0, 0, 1); // Xn, Zn, Corr.X, Corr.Z, Form




module doppelhohlziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0) /////////////////////////////////////////////////////
{ //Doppelmuldenfalzziegel
rotate(a=[ -(atan(Bh/(Bl+Bw+OverlapZ))), 0, 0])
  for (j=[0:1:Zbrick-1])
  {

    if (j/2 != floor(j/2)) translate([ 0, j*(Bl+Bw+OverlapZ), j*Bh ]) difference() 
    {
      cube([ (Bl+Fg)*0.6+OverlapX, Bl*2, Bh+Fg/2 ]);
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
          cube([ (Bl+Fg)*1.2+OverlapX, Bl*2, Bh+Fg/2 ]);
          rotate(a=[90,0,0]) translate([ Bw-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2, r=Bw/3);
          rotate(a=[90,0,0]) translate([ Bl-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2, r=Bw/3);
          translate([0,0,Bw/2-Fg]) rotate(a=[45,0,0]) cube([ (Bl+Fg)*1.2+OverlapX, Bw, Bw ]);
        }
      }
    }

    if (j/2 != floor(j/2)) translate([ (Xbrick-1)*(Bl+Fg*2+OverlapX)+Bw+Fg*1.4, j*(Bl+Bw+OverlapZ), j*Bh ]) difference() 
    {
      cube([ 2_3rdBrick+OverlapX, Bl*2, Bh+Fg/2 ]);
      rotate(a=[90,0,0]) translate([ Bw-Fg,Bh+Fg,-Bl*2 ]) cylinder(h = Bl*2 , r=Bw/3);
      translate([ 0,0,Bw/2-Fg ]) rotate(a=[45,0,0]) cube([ 2_3rdBrick+OverlapX, Bw, Bw ]);
    }

  }
  translate([ 0, Bl*2-Fg/2, -Bh-Fg ]) 
  cube([ Xbrick*(Bl+Fg*2+OverlapX)+Fg*1.5, (Zbrick-1)*(Bl+Bw+OverlapZ)+Fg, Bh ]);
}
//translate([ 0, 0, 0 ]) dachziegel( 5, 5, 0, 0); // Xn, Zn, Corr.X, Corr.Z





module hohlziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0) ///////////////////////////////////////////////////
{ //Reformziegel
//translate([ 0,-10,-7 ]) cube([ 1, 1600, 1 ]);
// echo("tan a = ", atan(Bh / (Bl+Bw+OverlapZ)));
  rotate(a=[ -(atan(Bh/(Bl+Bw+OverlapZ))), 0, 0])
  {
    for (j = [ 0 : 1 : Zbrick-1 ])
    {
      for (i = [ 0 : 1 : Xbrick-1 ])
      {
        translate([ i*(2_3rdBrick+Fg+OverlapX), j*(Bl+Bw+OverlapZ), j*Bh ]) difference() 
        {
          cube([ 2_3rdBrick+Fg+OverlapX, (Bw+Fg)*3+OverlapZ, Bw ]);
          rotate(a=[90,0,0]) translate([ Bw-Fg/2+OverlapX/2, 2_3rdBrick+Fg/2+OverlapX/2, 
          -(Bw+Fg)*3-Fg/2-OverlapZ ]) cylinder(h=(Bw+Fg)*3+Fg+OverlapZ , r=Bw+OverlapX/1.6);
        }
      }
    }
    translate([ 0, 0, -0.05 ]) 
    cube([ Xbrick*(2_3rdBrick+Fg+OverlapX), ((Bw+Fg)*3+OverlapZ), Bh ]);
  }
  for (j = [ 1 : 1 : Zbrick-1 ])
  {
    translate([ 0, j*(Bl+Bw+OverlapZ)+Fg*1.5, -Bh-Fg/4 ]) 
    cube([ Xbrick*(2_3rdBrick+Fg+OverlapX), ((Bw+Fg)*3+OverlapZ)/2, Bh+Fg ]);
  }
  translate([ 0, (Bl+Bw+OverlapZ) + (Bw+Fg)*3+OverlapZ-(Bl+Bw+OverlapZ)-Fg/2, -Bh-Fg/4 ]) 
  cube([ Xbrick*(2_3rdBrick+Fg+OverlapX), (Zbrick-1)*(Bl+Bw+OverlapZ)+Fg, Bh ]);
}


module rundziegel(Xbrick, Zbrick, OverlapX=0, OverlapZ=0) ///////////////////////////////////////////////////
{ //Hohlfalzziegel
  rotate(a=[ -(atan(Bh/(Bl+Bw+OverlapZ))), 0, 0])
  {
    for (j = [ 0 : 1 : Zbrick-1 ])
    {
      for (i = [ 0 : 1 : Xbrick-1 ])
      {
        translate([ i*(2_3rdBrick+Fg+OverlapX), j*(Bl+Bw+OverlapZ), j*Bh ]) difference() 
        {
          cube([ 2_3rdBrick+Fg+OverlapX, (Bw+Fg)*3+OverlapZ, Bw ]);
          rotate(a=[90,0,0]) translate([ Bw*0.75+OverlapX*0.4, (Bw+Fg)+OverlapX*0.3 , 
          -(Bw+Fg)*3-Fg/2-OverlapZ ]) cylinder(h=(Bw+Fg)*3+Fg+OverlapZ , r=(Bh+OverlapX/2.8)*1.2);
        }

        translate([ i*(2_3rdBrick+Fg+OverlapX)+Bw+OverlapX, j*(Bl+Bw+OverlapZ), j*Bh-Bw*1.2 ]) difference() 
        {
          rotate(a=[90,0,0]) translate([ Bw*0.75, Bl*0.9, -(Bw+Fg)*3-OverlapZ ]) 
          cylinder(h=(Bw+Fg)*3+OverlapZ , r=(Bh+OverlapX/4));
          translate([ 0, -1, 0.3 ]) cube([ 2_3rdBrick+Fg+OverlapX, (Bl+Fg)*2+OverlapZ, Bw+Fg ]);

        }
      }
    }
  }
  for (j = [ 1 : 1 : Zbrick-1 ])
  {
    translate([ 0, j*(Bl+Bw+OverlapZ)+Fg*1.5, -Bh-Fg/4 ]) 
    cube([ Xbrick*(2_3rdBrick+Fg+OverlapX), ((Bw+Fg)*3+OverlapZ)/2, Bh ]);
  }
  translate([ 0, (Bl+Bw+OverlapZ) + (Bw+Fg)*3+OverlapZ-(Bl+Bw+OverlapZ)-Fg/2, -Bh-Fg/4 ]) 
  cube([ Xbrick*(2_3rdBrick+Fg+OverlapX), (Zbrick-1)*(Bl+Bw+OverlapZ)+Fg, Bh-Fg ]);
//  cube([ Xbrick*(2_3rdBrick+Fg+OverlapX)+(Bh+OverlapX/4), (Zbrick-1)*(Bl+Bw+OverlapZ)+Fg, Bh-Fg ]);
}


module dachfirst(Xbrick, OverlapX=0, Shape=0) ///////////////////////////////////////////////////////////////
{
  if(Shape==0)
  {
    for (i = [ 0 : 1 : Xbrick-1 ])
    {
      translate([ i*(Bl*1.5+OverlapX), 0, 0 ]) difference() 
      { 
        union() 
        {
          rotate(a=[0,90,0]) cylinder(h=Fg+OverlapX/Bl, r=Bw);
          translate([ Fg, 0, 0 ]) rotate(a=[0,90,0]) cylinder(h=Fg+OverlapX/Bl, r1=Bw, r2=Bw-Fg );
        }
      }
      rotate(a=[0,90,0]) cylinder(h=(Bl*1.5+OverlapX)*Xbrick, r=Bw-Fg );
    }
  }
  if(Shape==1)
  {
    for (i = [ 0 : 1 : Xbrick-1 ])
    {
      translate([ i*(Bl*1.5+OverlapX), 0, 0 ])
      rotate(a=[0,90,0]) cylinder(h=(Bw+Fg)*3+OverlapX, r1=Bw+Fg, r2=Bw );
    }
  }
}


module dachrinne(Length, Corr=0, Start=0, Hold=0, Rand=0 ) //////////////////////////////////////////////////
{
  difference() { union() {
    rotate(a=[0,90,0]) cylinder(Length, r=Bw-Fg );
    translate([ Length/2, 0, Fg/2 ]) cube([ Length+Fg/2, (Bw-Fg/1.5)*2, Fg*Rand ], center=true);
    for (i = [ 0 : Hold : Length-Hold-Start ]) {
    translate([ Start+i, 0, 0 ]) rotate(a=[0,90,0]) cylinder(2, r=Bw-Fg/1.5 );}
  }
  translate([ Fg+Corr, 0, 0 ]) rotate(a=[0,90,0]) cylinder(Length-2*Fg-Corr*2, r=Bw-Fg*2-Corr );
  translate([ -Fg/2, -Bl/2, Fg/2 ]) cube([ Length+Fg, Bl, Bw ]);
  }
}


module fallrohr(Length, Distance, Basetube=0, MoveBend=0, Bend=60, xHold=0, Holdtop=Bw, Holdbottom=Bl) //////////////////////////////////////////
{ // dependencies module donutsegment
  h=Bw*(1-cos(Bend));
  s=Bw*sin(Bend);
  Kat=Distance-2*h;
  Hyp=Kat/cos((90-Bend));
  Move=s*2 + Hyp*cos(Bend);

//echo("h=",h,"s=",s);
//echo("Kat=",Kat, "Hyp=",Hyp);
//echo("H=", s*2 + Hyp*cos((Bend)));

  translate([ 0, 0, Length-Bh-MoveBend ]) cylinder(Bh+MoveBend, r=Bh );
  
  translate([ 0, Bw, Length-Bh-MoveBend ]) rotate(a=[0,90,0]) 
  donutsegment(Bw, Bh, 270, 270+Bend); // oberer Bogen

  translate([ 0, h, Length-Bh-MoveBend-s ]) 
  rotate(a=[180+Bend,0,0]) cylinder( Hyp, r=Bh );

  translate([ 0, Distance-Bw, Length-Bh-MoveBend-Move ]) rotate(a=[0,90,0]) 
  donutsegment(Bw, Bh, 90+Bend, 90); // unterer Bogen

  translate([ 0, Distance, 0 ]) cylinder(Length-Bh-MoveBend-Move, r=Bh );

  translate([ 0, Distance, 0 ]) cylinder(Basetube, r=Bh+Fg ); // Basetube


  if(xHold>0) translate([ 0, Distance, Length-Bh-MoveBend-Move-Holdtop ]) cylinder(Fg, r=Bh+Fg/2 ); // Haltering
  if(xHold>1) translate([ 0, Distance, Basetube+Holdbottom ]) cylinder(Fg, r=Bh+Fg/2 ); // Haltering
  if(xHold>2) 
  for (i = [ 0 : ((Length-Bh-MoveBend-Move-Holdtop)-(Basetube+Holdbottom))/(xHold-1) : 
                  (Length-Bh-MoveBend-Move-Holdtop)-(Basetube+Holdbottom) ]) 
                    translate([ 0, Distance, Basetube+Holdbottom+i ]) cylinder(Fg, r=Bh+Fg/2 ); // Haltering
}
//translate([ 0, 0, 0 ]) fallrohr( 60, 30 ); 
//translate([ 0, 0, 0 ]) fallrohr( 200, 30, 20, 10, 60, 4, 5, 20 ); // Gesamtlaenge, Breite, Hoehe Anschlussrohr, Knickhoehe von Oben, Winkel, Anzahl Halteringe, Abstand oberer Haltering, Abstand unterer Haltering


module donut(Dia, Thick)
rotate_extrude() translate ([Dia,0,0]) circle(Thick);
//donut( 20, 10); // Gesamtdurchmesser, Durchmesser Ring

module donutsegment(r1, r2, start_angle, end_angle) 
{
  trx = (r1+r2) * sqrt(2) + 1;
  a0 = (4 * start_angle + 0 * end_angle) / 4;
  a1 = (3 * start_angle + 1 * end_angle) / 4;
  a2 = (2 * start_angle + 2 * end_angle) / 4;
  a3 = (1 * start_angle + 3 * end_angle) / 4;
  a4 = (0 * start_angle + 4 * end_angle) / 4;

  intersection()
  {
    rotate_extrude() translate([r1,0,0]) difference() circle(r2);
    translate([0,0,-r2-1])	linear_extrude(height=2*r2+2)
    polygon([[0,0],
             [trx * cos(a0), trx * sin(a0)],
             [trx * cos(a1), trx * sin(a1)],
             [trx * cos(a2), trx * sin(a2)],
             [trx * cos(a3), trx * sin(a3)],
             [trx * cos(a4), trx * sin(a4)],
             [0,0]]);
  }
}


module Blechkanal(Length, Shape=1, Start=10, Hold=30, Cutout=8, Sicke=1 ) ////////////////////////////////////////
{
  for (i = [ 0 : Hold : Length-Start-1 ]) 
  {
    hull()
    {
      translate([ Start+i, 0, 0 ]) rotate(a=[0,90,0]) cylinder(2, r=11.5 );
      translate([ Start+i, (Shape-1)*20, 0 ]) rotate(a=[0,90,0]) cylinder(2, r=11.5 );
    }
    if(Sicke==1)
    { 
      if(i!=0) if(Shape!=1) translate([ Start+i-Hold/2+1, (Shape-1)*10+(Shape-2)*6, 10  ]) cube([ Hold-8, 2, 1.5 ], center=true);
      if(i!=0) if(Shape>4) translate([ Start+i-Hold/2+1, (Shape-1)*10, 10  ]) cube([ Hold-8, 2, 1.5 ], center=true);
      if(i!=0) if(Shape!=1) translate([ Start+i-Hold/2+1, (Shape-1)*10-(Shape-2)*6, 10  ]) cube([ Hold-8, 2, 1.5 ], center=true);
    }
  }
  difference() 
  { 
    hull() 
    {
      translate([ 0, 0, 0 ]) rotate(a=[ 0, 90, 0 ]) cylinder(Length, r=10 );
      translate([ 0, (Shape-1)*20, 0 ]) rotate(a=[ 0, 90, 0 ]) cylinder(Length, r=10 );
    }
    hull() 
    {
      translate([ -1, 0, 0 ]) rotate(a=[0,93,0]) cylinder(Cutout, r=7 );
      translate([ -1, (Shape-1)*20, 0 ]) rotate(a=[0,93,0]) cylinder(Cutout, r=7 );
    }
    hull() 
    {
      translate([ Length-Cutout, 0, 0 ]) rotate(a=[0,93,0]) cylinder(Cutout+1, r=7 );
      translate([ Length-Cutout, (Shape-1)*20, 0 ]) rotate(a=[0,93,0]) cylinder(Cutout+1, r=7 );
    }
  }
}
//translate([ 0, 0, 0 ]) Blechkanal( 250, 3, 15, 30, 5, 1 ); // Laenge, Anzahl Schachtbreite, Abstand 1st Ring, Distanz zwischen Ringen, Hohlschneiden, Sicke an


module Eternit( Width=87.5, Height=125, Wave=17.7, Shift=0 ) /////////////////////////////////////////////////////////////
{ // Profil 8 = 130mm (w=910,h=1250) oder Profil 5 = 177mm (w=875,h=1250)
Width=Width+Shift;
Wave=Wave/4;
  translate([ -Shift, 0, 0 ]) difference(){ union(){
    for (i = [ 0 : Wave : Width*0.25 ]) {
      translate([ i*4, Height/2, 0 ]) { 
        difference() {
          translate([ Wave*2, 0, 0 ]) cube([ Wave*4, Height, Wave*2 ], center=true );
          translate([ Wave, Height/2+1, Wave*1.5 ]) rotate([90,0,0]) cylinder(h=Height+2, r=Wave, $fn=50 );}
        translate([ Wave*3, Height/2, Wave ]) rotate([90,0,0]) cylinder(h=Height, r=Wave, $fn=50 );
        translate([ Wave*2, 0, Wave*0.25 ]) rotate([0,-60,0]) cube([ Wave*2.1, Height, Wave ], center=true );
        if(i<=Width*0.25-Wave) translate([ Wave*4, 0, Wave*0.25 ]) rotate([0,60,0]) cube([ Wave*2.1, Height, Wave ], center=true ); }}}
  translate([ Width+Wave*2+Shift+1, Height/2, 0 ]) cube([Wave*4+2, Height+2, Wave*4+2], center=true );
  translate([ -1, -1, -Wave-1 ])cube([Shift+1, Height+2, Wave*4]);}
}
//translate([ 0, 0, 0 ]) rotate([-1,0,0]) Eternit( 100, 100, 17.7, 8 ); // Breite, Hoehe, Wellenlaenge, Shift





module Eternit1( Dia=20, Height=10,  Wave=17.7, Thick=5, Shift=0 ) /////////////////////////////////////////////////////////////
{
/*
rotate_extrude($fn=50){
translate([50,0,0]){
circle(r = 5);
translate([0,10,0]) circle(r = 5);
}}
*/
//polygon(points=[[0,0],[0,1],[0.5,1.5],[1,1],[1,0]],paths=[ [0,1,2,3,4] ]);

/*
Steps=10;
rotate_extrude($fn=50)
//rotate([0,0,0]) linear_extrude()
{
  for( i = [ 0 : Steps : 100*Height-Steps ] )
  {
    translate([ Dia+Wave/6+Thick, 0, 0 ]) 
    polygon(points=[[-Thick-Wave/5,                   i/100], 
                    [sin(i*3.6/Wave)/6*Wave,          i/100], 
                    [sin((i+Steps)*3.6/Wave)/6*Wave, (i+Steps)/100], 
                    [-Thick-Wave/5,                  (i+Steps)/100]]);

//    translate([ Dia, 3.6, 0 ]) polygon(points=[[-2, i/100], [sin(i), i/100], [sin((i+Steps)), (i+Steps)/100], [-2, (i+Steps)/100]]);
  }
}
*/

/*
for( i = [ 0 : Steps : 360-Steps ] )
{
  translate([ 0, 0, i/100 ]) cylinder(h=Steps/100, r1=sin(i)+Dia, r2=sin((i+Steps))+Dia, $fn=50 );
}
*/

//rotate_extrude($fn=100) translate([Dia,4.5]) 
scale(0.5) rotate([0,-90,-90]) linear_extrude() translate([4.5,4.5])

for( i = [ 0 : 20 : Height*20 ] ) difference()
  {
    union()
    {
      translate([0,i]) circle(4.5, $fn=100);
      translate([0,i]) rotate([0,0,45]) square([4.5,6]);
      translate([0,20+i]) rotate([0,0,135]) translate([-4.5,0]) square([4.5,6.365]);
      translate([-4.5,-4.5+i]) square([4.05,20]);
    }
    translate([2.725,10+i]) circle(4.5, $fn=100);
  }

}

//Eternit1( 20, 5, 10, 2 ); // Breite, Hoehe, Wellenlaenge, Wandstaerke, 
//Eternit( 100, 100, 10, 2 ); // Breite, Hoehe, Wellenlaenge, Wandstaerke, 
//cube([10,10,10]);








module oberflaeche( Width=8, Height=125, Seed=42, Size=1 ) /////////////////////////////////////////////////////////////
{ 

//  donutsegment(Width, Wave, 0, 45);
//  rotate_extrude() translate ([Width,0,0]) circle(Wave,$fn=50);
  scale(1) surface(file = "275x265.inc");

//save("test.dat", rands(5,15,Width));

/*
rnd=rands(0, 5, Width*Height);

for (j = [ 0 : Size : Width ])
{
  for (i = [ 0 : Size : Height ])
  {
    echo( "Rnd: ",rnd);
    translate([j,i,0]) cube([ 1, 1, rnd[i+j] ]);
  }
}
*/
//cube([1000,10,10]); // only for scale
//translate([ 1000, 0, 0 ]) cube([10,10,10]); // only for scale
}
//translate([ 0, 0, 0 ]) rotate([-1,0,0]) oberflaeche( 10, 5, 42, 1 ); // Breite, Hoehe, Wellenlaenge, Shift





//donutsegment(20, 8, 0, 60); // Gesamtdurchmesser, Durchmesser Ring, 1.Winkel, 2.Winkel
//translate([ 0, 0, 0 ]) donut( 20, 10); // Gesamtdurchmesser, Durchmesser Ring

//translate([ 0, 0, 0 ]) dachrinne( 250, 0, 30, 30, 0 ); // Laenge, Korr. Wandstaerke, 1. Halter, Abstand Halter, Rand an

//translate([ 0, 0, 0 ]) fallrohr( 200, 30, 20, 10, 60, 4, 5, 20 ); // Gesamtlaenge, Breite, Hoehe Anschlussrohr, Knickhoehe von Oben, Winkel, Anzahl Halteringe, Abstand oberer Haltering, Abstand unterer Haltering

//translate([ 0, 0, 0 ]) dachfirst( 5, 0, 1 ); // Xn, Corr, Form

//translate([ 0, 0, 0 ]) dachziegel( 5, 5, 0, 0, 0); // Xn, Zn, Corr.X, Corr.Z, Form
  //translate([ 0, 0, 0 ]) doppelhohlziegel( 3, 5, 10, 10); // Xn, Zn, Corr.X, Corr.Z
  //translate([ 0, 0, 0 ]) hohlziegel( 3, 5, 10, 10); // Xn, Zn, Corr.X, Corr.Z
  //translate([ 0, 0, 0 ]) rundziegel( 3, 5, 10, 10); // Xn, Zn, Corr.X, Corr.Z

//translate([ 0, 0, 0 ]) rooftile( 5, 5, 0, 0); // Xn, Zn, Corr.X, Corr.Z

//translate([ 0, 0, 0 ]) basement( 1, 12, 1); // Liegende Ziegel an, n Ziegel hochkant, Liegende Ziegel an 

//translate([ 0, 0, 0 ]) wall( 14, 20, 0,0, 0); // Xn, Yn, Verzahnt links an, Verzahnt rechts an, 1.Reihe lange Ziegel an

//translate([ 0, 0, 0 ]) bbcut( 12, 180, 0.2 ); // Xn, Radius, Zwischenraum

//translate([ 0, 0, 0 ]) brickbow( 10, 100, 0.2, 2 ); // Xn, Radius, Zwischenraum, halbe Ziegel 

//translate([ 0, 0, 0 ]) brickcircle( 200, 5,   0, 242, 0, 20); // Radius, Bricks, Startwinkel, Winkel, Zementkorrektur, Zementhoehe

//translate([ 0, 0, 0 ]) reiter( 4, -4, 10, 0); // Xn, shift Zement, shift Reiter, corr. Reiter//

//translate([ 0, 0, 0 ]) Blechkanal( 250, 3, 15, 30, 5, 1 ); // Laenge, Anzahl Schachtbreite, Abstand 1st Ring, Distanz zwischen Ringen, Hohlschneiden, Sicke an

//translate([ 0, 0, 0 ]) rotate([-1,0,0]) Eternit( 100, 100, 17.7, 0 ); // Breite, Hoehe, Wellenlaenge, Shift
//translate([ 0, 125, 0 ]) rotate([-1,0,0]) Eternit( 200 ); // Breite, Hoehe, Wellenlaenge



//for (i = [ 0 : 1.8 : 360 ])
//rotate([0,0,i]) translate([ 5, -100, 0 ]) rotate([-1,-90,90]) Eternit( 200, 3.5, 17.7, 0 ); // Breite, Hoehe, Wellenlaenge, Shift
//cube([10,10,10], center=true);