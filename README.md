brick
=====

Routines to create via OpenSCAD brickstone houses.

The first project is a brickhouse used for coal storage at the train station Fritzlar in Hessen (Germany).

The include file Brick.scad contains routines to create walls, window cut-outs, ornaments and tile roofs.

Brick.scad module wall(Xbrick, Zbrick, LeftCorner, RightCorner, Halfbrick)
Creates a cross cemented wall with Xbricks in width and Zbricks in height.
LeftCorner or RightCorner set to 1 starts left or right with a gap in every 2nd. brick row.
Halfbrick set to 1 starts with the small side of the brick as first row.

Brick.scad module wallhalf(Xbrick, Zbrick, LeftCorner, RightCorner, Halfbrick)
Does the same as module wall but the wall will be only half brick thick.

Brick.scad module reiter(Xbrick, MoveCement, MoveReiter, AdjustReiter, Halfbrick) 
Creates an ornament with bricks turned 45°. 3 rows will created, 1 bottom row, 1 top row and between
the 45° moved bricks. MoveCement moves the cement in or out. MoveReiter moves the whole group in or out.
AdjustReiter moves the 45° bricks left or right. AdjustReiter shrinks or enlarge the 45° brick row and
halfbrick set to 1 creates for the top and bottom brick row half bricks.

Brick.scad module brickbow(Bricks, Radius, Space, Half)
Creates a brick bow mostly used for windows. 
Bricks is the length of the brick bow, Radius is the radius. 
Space defines the gab between the bricks, mostly used to adjust the brick row.
with Half can be defined how many bricks are used as half bricks.

Brick.scad module bbcut(Bricks, Radius, Space, Half)
Is used to cut out the space of the brick bow.

Brick.scad module basement(LeftFlat, Xbrick, RightFlat)
Is used to create a bottom row of 90° turned bricks.

Brick.scad module rooftile(Xbrick, Zbrick, OverlapX, OverlapZ)
Creates a roof. Xbrick defines how much tiles used in width and Zbrick how much in height.
OverlapX adjusts the roof in width and OverlapZ in Z direction.

Uncomment the lines on the bottom of the file Brick.scad to try out the functions.