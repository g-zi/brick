include <brick.scad>;

// Fritzlar Stellwerk Ost
Mauer = 30;

// Keller //////////////////////////////////////////////////////////////
difference() { union() {
translate([ 2, 2, -150 ]) cube([ 1000-4, Mauer-2, 150 ]);
translate([ 2, 530-Mauer, -150 ]) cube([ 1000-4, Mauer-2, 150 ]);
translate([ 2, 2, -150 ]) cube([ Mauer-2, 530-4, 150 ]);
translate([ 1000-Mauer, 2, -150 ]) cube([ Mauer-2, 530-4, 150 ]);
}
// Tuer
translate([ -1, 100, -200+124 ]) cube([ Mauer+2, 108, 204 ]);
// Tuer
translate([ 1000-Mauer-1, 32, -200+64 ]) cube([ Mauer+2, 108, 204 ]);
// Tuer
translate([ 1000-Mauer-1, 396, -200+64 ]) cube([ Mauer+2, 100, 200 ]);
}

// Grundmauer ///////////////////////////////////////
// Vorne
translate([ -1, -1, -15 ]) cube([ 16, 3, 15 ]);
translate([ 17, -1, -15 ]) cube([ 36, 3, 15 ]);
translate([ 55, -1, -15 ]) cube([ 16, 3, 15 ]);

translate([ -1, -1, -53 ]) cube([ 40, 3, 36 ]);
translate([ 41, -1, -37 ]) cube([ 30, 3, 20 ]);
translate([ 41, -1, -53 ]) cube([ 20, 3, 14 ]);
translate([ 63, -1, -53 ]) cube([ 23, 3, 14 ]);

translate([ 73, -1, -37 ]) cube([ 43, 3, 12 ]);
translate([ 118, -1, -37 ]) cube([ 20, 3, 12 ]);
translate([ 88, -1, -62 ]) cube([ 20, 3, 23 ]);
translate([ 110, -1, -62 ]) cube([ 28, 3, 23 ]);

translate([ 140, -1, -62 ]) cube([ 33, 3, 37 ]);
translate([ 175, -1, -50 ]) cube([ 60, 3, 25 ]);
translate([ 237, -1, -50 ]) cube([ 33, 3, 25 ]);
translate([ 272, -1, -40 ]) cube([ 36, 3, 15 ]);
translate([ 310, -1, -40 ]) cube([ 41, 3, 15 ]);
translate([ 353, -1, -48 ]) cube([ 56, 3, 23 ]);
translate([ 411, -1, -48 ]) cube([ 26, 3, 23 ]);
translate([ 439, -1, -48 ]) cube([ 36, 3, 23 ]);
translate([ 477, -1, -41 ]) cube([ 20, 3, 16 ]);
translate([ 499, -1, -41 ]) cube([ 38, 3, 16 ]);
translate([ 539, -1, -52 ]) cube([ 46, 3, 27 ]);


translate([ 175, -1, -82 ]) cube([ 34, 3, 30 ]);
translate([ 211, -1, -68 ]) cube([ 36, 3, 16 ]);
translate([ 249, -1, -68 ]) cube([ 21, 3, 16 ]);
translate([ 272, -1, -68 ]) cube([ 21, 3, 26 ]);
translate([ 295, -1, -68 ]) cube([ 33, 3, 26 ]);
translate([ 330, -1, -68 ]) cube([ 21, 3, 26 ]);

translate([ 353, -1, -76 ]) cube([ 41, 3, 26 ]);
translate([ 396, -1, -66 ]) cube([ 53, 3, 16 ]);
translate([ 451, -1, -66 ]) cube([ 24, 3, 16 ]);

translate([ 477, -1, -66 ]) cube([ 38, 3, 23 ]);
translate([ 517, -1, -52 ]) cube([ 20, 3, 9 ]);


translate([ 353, -1, -93 ]) cube([ 16, 3, 15 ]);
translate([ 371, -1, -100 ]) cube([ 23, 3, 22 ]);
translate([ 396, -1, -100 ]) cube([ 43, 3, 32 ]);
translate([ 441, -1, -91 ]) cube([ 46, 3, 23 ]);
translate([ 489, -1, -83 ]) cube([ 26, 3, 15 ]);
translate([ 517, -1, -83 ]) cube([ 68, 3, 29 ]);
translate([ 587, -1, -83 ]) cube([ 47, 3, 19 ]);

translate([ 489, -1, -100 ]) cube([ 36, 3, 15 ]);
translate([ 527, -1, -100 ]) cube([ 19, 3, 15 ]);


translate([ 211, -1, -82 ]) cube([ 14, 3, 12 ]);

translate([ -1, -1, -73 ]) cube([ 26, 3, 18 ]);
translate([ 27, -1, -73 ]) cube([ 24, 3, 18 ]);
translate([ 53, -1, -73 ]) cube([ 33, 3, 18 ]);

translate([ -1, -1, -93 ]) cube([ 17, 3, 18 ]);
translate([ 18, -1, -93 ]) cube([ 43, 3, 18 ]);
translate([ 63, -1, -93 ]) cube([ 23, 3, 18 ]);

translate([ 88, -1, -102 ]) cube([ 33, 3, 38 ]);
translate([ 123, -1, -82 ]) cube([ 33, 3, 18 ]);
translate([ 158, -1, -82 ]) cube([ 15, 3, 18 ]);

translate([ 123, -1, -102 ]) cube([ 50, 3, 18 ]);
translate([ 175, -1, -102 ]) cube([ 50, 3, 18 ]);

translate([ 227, -1, -102 ]) cube([ 56, 3, 32 ]);

translate([ 285, -1, -93 ]) cube([ 26, 3, 23 ]);
translate([ 313, -1, -93 ]) cube([ 38, 3, 23 ]);

translate([ 285, -1, -112 ]) cube([ 36, 3, 17 ]);
translate([ 323, -1, -112 ]) cube([ 46, 3, 17 ]);
translate([ 371, -1, -125 ]) cube([ 46, 3, 23 ]);
translate([ 419, -1, -125 ]) cube([ 33, 3, 23 ]);

translate([ 441, -1, -100 ]) cube([ 11, 3, 7 ]);
translate([ 454, -1, -116 ]) cube([ 33, 3, 23 ]);
translate([ 489, -1, -116 ]) cube([ 19, 3, 14 ]);

translate([ 548, -1, -108 ]) cube([ 19, 3, 23 ]);
translate([ 569, -1, -108 ]) cube([ 45, 3, 23 ]);
translate([ 616, -1, -100 ]) cube([ 18, 3, 15 ]);


translate([ -1, -1, -118 ]) cube([ 50, 3, 23 ]);
translate([ 51, -1, -118 ]) cube([ 35, 3, 23 ]);


translate([ 88, -1, -114 ]) cube([ 15, 3, 10 ]);
translate([ 105, -1, -114 ]) cube([ 33, 3, 10 ]);
translate([ 88, -1, -132 ]) cube([ 50, 3, 16 ]);

translate([ 140, -1, -119 ]) cube([ 46, 3, 15 ]);
translate([ 188, -1, -119 ]) cube([ 14, 3, 15 ]);

translate([ 204, -1, -129 ]) cube([ 56, 3, 25 ]);
translate([ 262, -1, -129 ]) cube([ 21, 3, 25 ]);
translate([ 285, -1, -129 ]) cube([ 49, 3, 15 ]);


translate([ -1, -1, -150 ]) cube([ 33, 3, 30 ]);
translate([ 34, -1, -132 ]) cube([ 25, 3, 12 ]);
translate([ 61, -1, -132 ]) cube([ 25, 3, 12 ]);
translate([ 34, -1, -150 ]) cube([ 34, 3, 16 ]);
translate([ 70, -1, -150 ]) cube([ 43, 3, 16 ]);
translate([ 115, -1, -150 ]) cube([ 23, 3, 16 ]);

translate([ 140, -1, -150 ]) cube([ 23, 3, 29 ]);
translate([ 165, -1, -150 ]) cube([ 37, 3, 29 ]);

translate([ 204, -1, -150 ]) cube([ 37, 3, 19 ]);
translate([ 243, -1, -150 ]) cube([ 56, 3, 19 ]);
translate([ 301, -1, -150 ]) cube([ 33, 3, 19 ]);

translate([ 336, -1, -150 ]) cube([ 33, 3, 36 ]);
translate([ 371, -1, -150 ]) cube([ 33, 3, 23 ]);
translate([ 406, -1, -150 ]) cube([ 46, 3, 23 ]);

translate([ 454, -1, -133 ]) cube([ 16, 3, 15 ]);
translate([ 472, -1, -133 ]) cube([ 36, 3, 15 ]);
translate([ 510, -1, -133 ]) cube([ 18, 3, 6 ]);
translate([ 510, -1, -125 ]) cube([ 36, 3, 23 ]);
translate([ 548, -1, -125 ]) cube([ 36, 3, 15 ]);
translate([ 586, -1, -125 ]) cube([ 28, 3, 15 ]);

translate([ 616, -1, -131 ]) cube([ 29, 3, 29 ]);
translate([ 647, -1, -114 ]) cube([ 21, 3, 12 ]);
translate([ 670, -1, -114 ]) cube([ 12, 3, 12 ]);
translate([ 647, -1, -131 ]) cube([ 35, 3, 15 ]);


translate([ 454, -1, -150 ]) cube([ 36, 3, 15 ]);
translate([ 492, -1, -150 ]) cube([ 36, 3, 15 ]);
translate([ 530, -1, -150 ]) cube([ 36, 3, 23 ]);
translate([ 568, -1, -150 ]) cube([ 46, 3, 23 ]);
translate([ 616, -1, -150 ]) cube([ 46, 3, 17 ]);
translate([ 664, -1, -150 ]) cube([ 18, 3, 17 ]);


translate([ 73, -1, -23 ]) cube([ 80, 3, 23 ]);
translate([ 155, -1, -23 ]) cube([ 96, 3, 23 ]);
translate([ 253, -1, -23 ]) cube([ 43, 3, 23 ]);
translate([ 298, -1, -23 ]) cube([ 56, 3, 23 ]);
translate([ 354, -1, -23 ]) cube([ 43, 3, 23 ]);
translate([ 399, -1, -23 ]) cube([ 46, 3, 23 ]);
translate([ 447, -1, -23 ]) cube([ 66, 3, 23 ]);
translate([ 515, -1, -23 ]) cube([ 93, 3, 23 ]);
translate([ 610, -1, -23 ]) cube([ 60, 3, 23 ]);
translate([ 672, -1, -23 ]) cube([ 33, 3, 23 ]);
translate([ 707, -1, -23 ]) cube([ 20, 3, 23 ]);
translate([ 729, -1, -27 ]) cube([ 46, 3, 27 ]);
translate([ 777, -1, -27 ]) cube([ 23, 3, 27 ]);
translate([ 802, -1, -27 ]) cube([ 63, 3, 27 ]);
translate([ 867, -1, -27 ]) cube([ 50, 3, 27 ]);

translate([ 919, -1, -12 ]) cube([ 60, 3, 12 ]);
translate([ 981, -1, -35 ]) cube([ 20, 3, 35 ]);
translate([ 919, -1, -35  ]) cube([ 21, 3, 21 ]);
translate([ 942, -1, -35  ]) cube([ 37, 3, 21 ]);

    translate([ 175, -1, -48 ]) cube([ 410, 3, 23 ]);

translate([ 587, -1, -62 ]) cube([ 33, 3, 37 ]);
translate([ 622, -1, -48 ]) cube([ 56, 3, 23 ]);
translate([ 680, -1, -48 ]) cube([ 16, 3, 23 ]);
translate([ 698, -1, -52 ]) cube([ 29, 3, 27 ]);

translate([ 729, -1, -52 ]) cube([ 23, 3, 23 ]);
translate([ 754, -1, -52 ]) cube([ 37, 3, 23 ]);

translate([ 793, -1, -58 ]) cube([ 37, 3, 29 ]);
translate([ 832, -1, -58 ]) cube([ 50, 3, 29 ]);
translate([ 884, -1, -58 ]) cube([ 18, 3, 29 ]);

translate([ 904, -1, -35 ]) cube([ 13, 3, 6 ]);

translate([ 904, -1, -58 ]) cube([ 48, 3, 21 ]);
translate([ 954, -1, -58 ]) cube([ 47, 3, 21 ]);


translate([ 622, -1, -62 ]) cube([ 12, 3, 12 ]);
translate([ 636, -1, -79 ]) cube([ 26, 3, 29 ]);
translate([ 664, -1, -79 ]) cube([ 32, 3, 29 ]);
translate([ 698, -1, -79 ]) cube([ 20, 3, 25 ]);

translate([ 636, -1, -100 ]) cube([ 46, 3, 19 ]);
translate([ 684, -1, -110 ]) cube([ 34, 3, 29 ]);

translate([ 720, -1, -100 ]) cube([ 25, 3, 46 ]);
translate([ 747, -1, -66 ]) cube([ 20, 3, 12 ]);
translate([ 769, -1, -66 ]) cube([ 22, 3, 12 ]);
translate([ 747, -1, -83 ]) cube([ 44, 3, 15 ]);

translate([ 793, -1, -83 ]) cube([ 76, 3, 23 ]);
translate([ 871, -1, -83 ]) cube([ 20, 3, 23 ]);
translate([ 893, -1, -83 ]) cube([ 36, 3, 23 ]);
translate([ 931, -1, -75 ]) cube([ 52, 3, 15 ]);

translate([ 931, -1, -95 ]) cube([ 28, 3, 18 ]);
translate([ 961, -1, -95 ]) cube([ 22, 3, 18 ]);

translate([ 985, -1, -95 ]) cube([ 16, 3, 35 ]);


translate([ 747, -1, -100 ]) cube([ 31, 3, 15 ]);
translate([ 780, -1, -100 ]) cube([ 43, 3, 15 ]);
translate([ 825, -1, -108 ]) cube([ 33, 3, 23 ]);
translate([ 860, -1, -108 ]) cube([ 56, 3, 23 ]);

translate([ 918, -1, -95 ]) cube([ 11, 3, 10 ]);

translate([ 918, -1, -118 ]) cube([ 50, 3, 21 ]);
translate([ 970, -1, -118 ]) cube([ 31, 3, 21 ]);


translate([ 684, -1, -150 ]) cube([ 20, 3, 38 ]);
translate([ 720, -1, -119 ]) cube([ 38, 3, 17 ]);
translate([ 706, -1, -150 ]) cube([ 52, 3, 29 ]);
translate([ 706, -1, -119 ]) cube([ 12, 3, 7 ]);
translate([ 760, -1, -136 ]) cube([ 43, 3, 34 ]);
translate([ 760, -1, -150 ]) cube([ 16, 3, 12 ]);
translate([ 778, -1, -150 ]) cube([ 25, 3, 12 ]);

translate([ 805, -1, -122 ]) cube([ 18, 3, 20 ]);

translate([ 825, -1, -122 ]) cube([ 25, 3, 12 ]);
translate([ 805, -1, -150 ]) cube([ 45, 3, 26 ]);

translate([ 852, -1, -150 ]) cube([ 25, 3, 12 ]);
translate([ 879, -1, -150 ]) cube([ 37, 3, 12 ]);

translate([ 852, -1, -136 ]) cube([ 36, 3, 26 ]);
translate([ 890, -1, -136 ]) cube([ 26, 3, 26 ]);

translate([ 918, -1, -150 ]) cube([ 21, 3, 30 ]);
translate([ 941, -1, -150 ]) cube([ 38, 3, 30 ]);
translate([ 981, -1, -150 ]) cube([ 20, 3, 30 ]);


// Hinten ////////////////////////////////////////////////////////////////////
  translate([ -1, 528, -23 ]) cube([ 40, 3, 23 ]);
translate([ 41, 528, -37 ]) cube([ 30, 3, 37 ]);

  translate([ -1, 528, -50 ]) cube([ 16, 3, 25 ]);
translate([ 17, 528, -50 ]) cube([ 22, 3, 25 ]);
translate([ 41, 528, -50 ]) cube([ 20, 3, 11 ]);
translate([ 63, 528, -50 ]) cube([ 23, 3, 11 ]);

translate([ 73, 528, -37 ]) cube([ 43, 3, 12 ]);
translate([ 118, 528, -37 ]) cube([ 20, 3, 12 ]);
translate([ 88, 528, -62 ]) cube([ 20, 3, 23 ]);
translate([ 110, 528, -62 ]) cube([ 28, 3, 23 ]);

translate([ 140, 528, -62 ]) cube([ 33, 3, 37 ]);
translate([ 175, 528, -50 ]) cube([ 60, 3, 25 ]);
translate([ 237, 528, -50 ]) cube([ 33, 3, 25 ]);
translate([ 272, 528, -40 ]) cube([ 36, 3, 15 ]);
translate([ 310, 528, -40 ]) cube([ 41, 3, 15 ]);
translate([ 353, 528, -48 ]) cube([ 56, 3, 23 ]);
translate([ 411, 528, -48 ]) cube([ 26, 3, 23 ]);
translate([ 439, 528, -48 ]) cube([ 36, 3, 23 ]);
translate([ 477, 528, -41 ]) cube([ 20, 3, 16 ]);
translate([ 499, 528, -41 ]) cube([ 38, 3, 16 ]);
translate([ 539, 528, -52 ]) cube([ 46, 3, 27 ]);


translate([ 175, 528, -82 ]) cube([ 34, 3, 30 ]);
translate([ 211, 528, -68 ]) cube([ 36, 3, 16 ]);
translate([ 249, 528, -68 ]) cube([ 21, 3, 16 ]);
translate([ 272, 528, -68 ]) cube([ 21, 3, 26 ]);
translate([ 295, 528, -68 ]) cube([ 33, 3, 26 ]);
translate([ 330, 528, -68 ]) cube([ 21, 3, 26 ]);

translate([ 353, 528, -76 ]) cube([ 41, 3, 26 ]);
translate([ 396, 528, -66 ]) cube([ 53, 3, 16 ]);
translate([ 451, 528, -66 ]) cube([ 24, 3, 16 ]);

translate([ 477, 528, -66 ]) cube([ 38, 3, 23 ]);
translate([ 517, 528, -52 ]) cube([ 20, 3, 9 ]);


translate([ 353, 528, -93 ]) cube([ 16, 3, 15 ]);
translate([ 371, 528, -100 ]) cube([ 23, 3, 22 ]);
translate([ 396, 528, -100 ]) cube([ 43, 3, 32 ]);
translate([ 441, 528, -91 ]) cube([ 46, 3, 23 ]);
translate([ 489, 528, -83 ]) cube([ 26, 3, 15 ]);
translate([ 517, 528, -83 ]) cube([ 68, 3, 29 ]);
translate([ 587, 528, -83 ]) cube([ 47, 3, 19 ]);

translate([ 489, 528, -100 ]) cube([ 36, 3, 15 ]);
translate([ 527, 528, -100 ]) cube([ 19, 3, 15 ]);


translate([ 211, 528, -82 ]) cube([ 14, 3, 12 ]);

  translate([ -1, 528, -85 ]) cube([ 26, 3, 33 ]);
translate([ 27, 528, -73 ]) cube([ 24, 3, 21 ]);
translate([ 53, 528, -73 ]) cube([ 33, 3, 21 ]);

  translate([ -1, 528, -110 ]) cube([ 26, 3, 23 ]);
translate([ 27, 528, -110 ]) cube([ 22, 3, 15 ]);
translate([ 27, 528, -93 ]) cube([ 34, 3, 18 ]);
translate([ 63, 528, -93 ]) cube([ 23, 3, 18 ]);

translate([ 88, 528, -102 ]) cube([ 33, 3, 38 ]);
translate([ 123, 528, -82 ]) cube([ 33, 3, 18 ]);
translate([ 158, 528, -82 ]) cube([ 15, 3, 18 ]);

translate([ 123, 528, -102 ]) cube([ 50, 3, 18 ]);
translate([ 175, 528, -102 ]) cube([ 50, 3, 18 ]);

translate([ 227, 528, -102 ]) cube([ 56, 3, 32 ]);

translate([ 285, 528, -93 ]) cube([ 26, 3, 23 ]);
translate([ 313, 528, -93 ]) cube([ 38, 3, 23 ]);

translate([ 285, 528, -112 ]) cube([ 36, 3, 17 ]);
translate([ 323, 528, -112 ]) cube([ 46, 3, 17 ]);
translate([ 371, 528, -125 ]) cube([ 46, 3, 23 ]);
translate([ 419, 528, -125 ]) cube([ 33, 3, 23 ]);

translate([ 441, 528, -100 ]) cube([ 11, 3, 7 ]);
translate([ 454, 528, -116 ]) cube([ 33, 3, 23 ]);
translate([ 489, 528, -116 ]) cube([ 19, 3, 14 ]);

translate([ 548, 528, -108 ]) cube([ 19, 3, 23 ]);
translate([ 569, 528, -108 ]) cube([ 45, 3, 23 ]);
translate([ 616, 528, -100 ]) cube([ 18, 3, 15 ]);


  translate([ -1, 528, -129 ]) cube([ 50, 3, 17 ]);
translate([ 51, 528, -118 ]) cube([ 35, 3, 23 ]);


translate([ 88, 528, -114 ]) cube([ 15, 3, 10 ]);
translate([ 105, 528, -114 ]) cube([ 33, 3, 10 ]);
translate([ 88, 528, -132 ]) cube([ 50, 3, 16 ]);

translate([ 140, 528, -119 ]) cube([ 46, 3, 15 ]);
translate([ 188, 528, -119 ]) cube([ 14, 3, 15 ]);

translate([ 204, 528, -129 ]) cube([ 56, 3, 25 ]);
translate([ 262, 528, -129 ]) cube([ 21, 3, 25 ]);
translate([ 285, 528, -129 ]) cube([ 49, 3, 15 ]);


  translate([ -1, 528, -150 ]) cube([ 33, 3, 19 ]);
translate([ 51, 528, -150 ]) cube([ 17, 3, 30 ]);
translate([ 70, 528, -132 ]) cube([ 16, 3, 12 ]);
translate([ 34, 528, -150 ]) cube([ 15, 3, 19 ]);
translate([ 70, 528, -150 ]) cube([ 43, 3, 16 ]);
translate([ 115, 528, -150 ]) cube([ 23, 3, 16 ]);

translate([ 140, 528, -150 ]) cube([ 23, 3, 29 ]);
translate([ 165, 528, -150 ]) cube([ 37, 3, 29 ]);

translate([ 204, 528, -150 ]) cube([ 37, 3, 19 ]);
translate([ 243, 528, -150 ]) cube([ 56, 3, 19 ]);
translate([ 301, 528, -150 ]) cube([ 33, 3, 19 ]);

translate([ 336, 528, -150 ]) cube([ 33, 3, 36 ]);
translate([ 371, 528, -150 ]) cube([ 33, 3, 23 ]);
translate([ 406, 528, -150 ]) cube([ 46, 3, 23 ]);

translate([ 454, 528, -133 ]) cube([ 16, 3, 15 ]);
translate([ 472, 528, -133 ]) cube([ 36, 3, 15 ]);
translate([ 510, 528, -133 ]) cube([ 18, 3, 6 ]);
translate([ 510, 528, -125 ]) cube([ 36, 3, 23 ]);
translate([ 548, 528, -125 ]) cube([ 36, 3, 15 ]);
translate([ 586, 528, -125 ]) cube([ 28, 3, 15 ]);

translate([ 616, 528, -131 ]) cube([ 29, 3, 29 ]);
translate([ 647, 528, -114 ]) cube([ 21, 3, 12 ]);
translate([ 670, 528, -114 ]) cube([ 12, 3, 12 ]);
translate([ 647, 528, -131 ]) cube([ 35, 3, 15 ]);


translate([ 454, 528, -150 ]) cube([ 36, 3, 15 ]);
translate([ 492, 528, -150 ]) cube([ 36, 3, 15 ]);
translate([ 530, 528, -150 ]) cube([ 36, 3, 23 ]);
translate([ 568, 528, -150 ]) cube([ 46, 3, 23 ]);
translate([ 616, 528, -150 ]) cube([ 46, 3, 17 ]);
translate([ 664, 528, -150 ]) cube([ 18, 3, 17 ]);


translate([ 73, 528, -23 ]) cube([ 80, 3, 23 ]);
translate([ 155, 528, -23 ]) cube([ 96, 3, 23 ]);
translate([ 253, 528, -23 ]) cube([ 43, 3, 23 ]);
translate([ 298, 528, -23 ]) cube([ 56, 3, 23 ]);
translate([ 354, 528, -23 ]) cube([ 43, 3, 23 ]);
translate([ 399, 528, -23 ]) cube([ 46, 3, 23 ]);
translate([ 447, 528, -23 ]) cube([ 66, 3, 23 ]);
translate([ 515, 528, -23 ]) cube([ 93, 3, 23 ]);
translate([ 610, 528, -23 ]) cube([ 60, 3, 23 ]);
translate([ 672, 528, -23 ]) cube([ 33, 3, 23 ]);
translate([ 707, 528, -23 ]) cube([ 20, 3, 23 ]);
translate([ 729, 528, -27 ]) cube([ 46, 3, 27 ]);
translate([ 777, 528, -27 ]) cube([ 23, 3, 27 ]);
translate([ 802, 528, -27 ]) cube([ 63, 3, 27 ]);
translate([ 867, 528, -27 ]) cube([ 50, 3, 27 ]);

translate([ 919, 528, -12 ]) cube([ 60, 3, 12 ]);
translate([ 981, 528, -35 ]) cube([ 20, 3, 35 ]);
translate([ 919, 528, -35  ]) cube([ 21, 3, 21 ]);
translate([ 942, 528, -35  ]) cube([ 37, 3, 21 ]);


translate([ 587, 528, -62 ]) cube([ 33, 3, 37 ]);
translate([ 622, 528, -48 ]) cube([ 56, 3, 23 ]);
translate([ 680, 528, -48 ]) cube([ 16, 3, 23 ]);
translate([ 698, 528, -52 ]) cube([ 29, 3, 27 ]);

translate([ 729, 528, -52 ]) cube([ 23, 3, 23 ]);
translate([ 754, 528, -52 ]) cube([ 37, 3, 23 ]);

translate([ 793, 528, -58 ]) cube([ 37, 3, 29 ]);
translate([ 832, 528, -58 ]) cube([ 50, 3, 29 ]);
translate([ 884, 528, -58 ]) cube([ 18, 3, 29 ]);

translate([ 904, 528, -35 ]) cube([ 13, 3, 6 ]);

translate([ 904, 528, -58 ]) cube([ 48, 3, 21 ]);
translate([ 954, 528, -58 ]) cube([ 47, 3, 21 ]);


translate([ 622, 528, -62 ]) cube([ 12, 3, 12 ]);
translate([ 636, 528, -79 ]) cube([ 26, 3, 29 ]);
translate([ 664, 528, -79 ]) cube([ 32, 3, 29 ]);
translate([ 698, 528, -79 ]) cube([ 20, 3, 25 ]);

translate([ 636, 528, -100 ]) cube([ 46, 3, 19 ]);
translate([ 684, 528, -110 ]) cube([ 34, 3, 29 ]);

translate([ 720, 528, -100 ]) cube([ 25, 3, 46 ]);
translate([ 747, 528, -66 ]) cube([ 20, 3, 12 ]);
translate([ 769, 528, -66 ]) cube([ 22, 3, 12 ]);
translate([ 747, 528, -83 ]) cube([ 44, 3, 15 ]);

translate([ 793, 528, -83 ]) cube([ 76, 3, 23 ]);
translate([ 871, 528, -83 ]) cube([ 20, 3, 23 ]);
translate([ 893, 528, -83 ]) cube([ 36, 3, 23 ]);
translate([ 931, 528, -75 ]) cube([ 52, 3, 15 ]);

translate([ 931, 528, -95 ]) cube([ 28, 3, 18 ]);
translate([ 961, 528, -95 ]) cube([ 22, 3, 18 ]);

translate([ 985, 528, -95 ]) cube([ 16, 3, 35 ]);


translate([ 747, 528, -100 ]) cube([ 31, 3, 15 ]);
translate([ 780, 528, -100 ]) cube([ 43, 3, 15 ]);
translate([ 825, 528, -108 ]) cube([ 33, 3, 23 ]);
translate([ 860, 528, -108 ]) cube([ 56, 3, 23 ]);

translate([ 918, 528, -95 ]) cube([ 11, 3, 10 ]);

translate([ 918, 528, -118 ]) cube([ 50, 3, 21 ]);
translate([ 970, 528, -118 ]) cube([ 31, 3, 21 ]);


translate([ 684, 528, -150 ]) cube([ 20, 3, 38 ]);
translate([ 720, 528, -119 ]) cube([ 38, 3, 17 ]);
translate([ 706, 528, -150 ]) cube([ 52, 3, 29 ]);
translate([ 706, 528, -119 ]) cube([ 12, 3, 7 ]);
translate([ 760, 528, -136 ]) cube([ 43, 3, 34 ]);
translate([ 760, 528, -150 ]) cube([ 16, 3, 12 ]);
translate([ 778, 528, -150 ]) cube([ 25, 3, 12 ]);

translate([ 805, 528, -122 ]) cube([ 18, 3, 20 ]);

translate([ 825, 528, -122 ]) cube([ 25, 3, 12 ]);
translate([ 805, 528, -150 ]) cube([ 45, 3, 26 ]);

translate([ 852, 528, -150 ]) cube([ 25, 3, 12 ]);
translate([ 879, 528, -150 ]) cube([ 37, 3, 12 ]);

translate([ 852, 528, -136 ]) cube([ 36, 3, 26 ]);
translate([ 890, 528, -136 ]) cube([ 26, 3, 26 ]);

translate([ 918, 528, -150 ]) cube([ 21, 3, 30 ]);
translate([ 941, 528, -150 ]) cube([ 38, 3, 30 ]);
translate([ 981, 528, -150 ]) cube([ 20, 3, 30 ]);


// Rechts ////////////////////////////////////////////////////////////////////
translate([ 998, -1, -35 ]) cube([ 3, 33, 35 ]);
translate([ 998, -1, -58 ]) cube([ 3, 17, 21 ]);
translate([ 998, 18, -58 ]) cube([ 3, 14, 21 ]);
translate([ 998, -1, -95 ]) cube([ 3, 33, 35 ]);
translate([ 998, -1, -118 ]) cube([ 3, 17, 21 ]);
translate([ 998, 18, -118 ]) cube([ 3, 14, 21 ]);
translate([ 998, -1, -150 ]) cube([ 3, 33, 30 ]);

translate([ 998, 140, -26 ]) cube([ 3, 36, 26 ]);
translate([ 998, 178, -26 ]) cube([ 3, 25, 26 ]);
translate([ 998, 205, -40 ]) cube([ 3, 34, 40 ]);
translate([ 998, 241, -15 ]) cube([ 3, 87, 15 ]);
translate([ 998, 330, -32 ]) cube([ 3, 32, 32 ]);
translate([ 998, 364, -32 ]) cube([ 3, 32, 32 ]);

translate([ 998, 140, -57 ]) cube([ 3, 48, 29 ]);
translate([ 998, 190, -40 ]) cube([ 3, 13, 12 ]);
translate([ 998, 241, -40 ]) cube([ 3, 38, 23 ]);
translate([ 998, 281, -40 ]) cube([ 3, 28, 23 ]);
translate([ 998, 311, -32 ]) cube([ 3, 17, 15 ]);

translate([ 998, 190, -57 ]) cube([ 3, 39, 15 ]);
translate([ 998, 231, -64 ]) cube([ 3, 78, 22 ]);
translate([ 998, 311, -64 ]) cube([ 3, 42, 30 ]);
translate([ 998, 355, -64 ]) cube([ 3, 41, 30 ]);

translate([ 998, 140, -89 ]) cube([ 3, 33, 30 ]);
translate([ 998, 175, -89 ]) cube([ 3, 54, 30 ]);
translate([ 998, 231, -89 ]) cube([ 3, 46, 23 ]);
translate([ 998, 279, -99 ]) cube([ 3, 46, 33 ]);
translate([ 998, 327, -99 ]) cube([ 3, 46, 33 ]);
translate([ 998, 375, -99 ]) cube([ 3, 21, 33 ]);

translate([ 998, 140, -114 ]) cube([ 3, 56, 23 ]);
translate([ 998, 198, -114 ]) cube([ 3, 46, 23 ]);
translate([ 998, 246, -124 ]) cube([ 3, 31, 33 ]);
translate([ 998, 279, -124 ]) cube([ 3, 26, 23 ]);
translate([ 998, 307, -124 ]) cube([ 3, 46, 23 ]);
translate([ 998, 355, -124 ]) cube([ 3, 41, 23 ]);

translate([ 998, 140, -150 ]) cube([ 3, 33, 34 ]);
translate([ 998, 175, -133 ]) cube([ 3, 28, 17 ]);
translate([ 998, 205, -133 ]) cube([ 3, 14, 17 ]);
translate([ 998, 175, -150 ]) cube([ 3, 44, 15 ]);
translate([ 998, 221, -150 ]) cube([ 3, 23, 34 ]);
translate([ 998, 246, -150 ]) cube([ 3, 22, 24 ]);
translate([ 998, 270, -150 ]) cube([ 3, 60, 24 ]);
translate([ 998, 332, -150 ]) cube([ 3, 36, 24 ]);
translate([ 998, 370, -150 ]) cube([ 3, 26, 24 ]);

translate([ 998, 496, -35 ]) cube([ 3, 35, 35 ]);
translate([ 998, 496, -58 ]) cube([ 3, 17, 21 ]);
translate([ 998, 515, -58 ]) cube([ 3, 16, 21 ]);
translate([ 998, 496, -95 ]) cube([ 3, 35, 35 ]);
translate([ 998, 496, -118 ]) cube([ 3, 17, 21 ]);
translate([ 998, 515, -118 ]) cube([ 3, 16, 21 ]);
translate([ 998, 496, -150 ]) cube([ 3, 35, 30 ]);


// Links ////////////////////////////////////////////////////////////////////
translate([ -1, 505, -23 ]) cube([ 3, 26, 23 ]);
translate([ -1, 457, -23 ]) cube([ 3, 46, 23 ]);
translate([ -1, 433, -23 ]) cube([ 3, 22, 23 ]);

translate([ -1, 380, -17 ]) cube([ 3, 51, 17 ]);
translate([ -1, 332, -17 ]) cube([ 3, 46, 17 ]);
translate([ -1, 294, -17 ]) cube([ 3, 36, 17 ]);
translate([ -1, 266, -29 ]) cube([ 3, 26, 29 ]);
translate([ -1, 238, -15 ]) cube([ 3, 26, 15 ]);
translate([ -1, 208, -15 ]) cube([ 3, 28, 15 ]);
//translate([ -1, 161, -23 ]) cube([ 3, 27, 23 ]);
//translate([ -1, 123, -23 ]) cube([ 3, 36, 23 ]);
//translate([ -1, 75, -23 ]) cube([ 3, 46, 23 ]);
translate([ -1, 47, -15 ]) cube([ 3, 53, 15 ]);
translate([ -1, -1, -15 ]) cube([ 3, 46, 15 ]);

translate([ -1, 481, -50 ]) cube([ 3, 50, 25 ]);
translate([ -1, 433, -43 ]) cube([ 3, 46, 18 ]);

translate([ -1, 407, -43 ]) cube([ 3, 24, 24 ]);
translate([ -1, 359, -43 ]) cube([ 3, 46, 24 ]);
translate([ -1, 311, -43 ]) cube([ 3, 46, 24 ]);
translate([ -1, 295, -29 ]) cube([ 3, 14, 10 ]);
translate([ -1, 208, -38 ]) cube([ 3, 56, 21 ]);
//translate([ -1, 190, -38 ]) cube([ 3, 26, 21 ]);
//translate([ -1, 143, -55 ]) cube([ 3, 45, 30 ]);
//translate([ -1, 95, -48 ]) cube([ 3, 46, 23 ]);
translate([ -1, 75, -36 ]) cube([ 3, 25, 19 ]);
translate([ -1, 27, -36 ]) cube([ 3, 46, 19 ]);

translate([ -1, 343, -60 ]) cube([ 3, 46, 15 ]);
translate([ -1, 311, -60 ]) cube([ 3, 30, 15 ]);
translate([ -1, 266, -60 ]) cube([ 3, 43, 29 ]);
translate([ -1, 228, -60 ]) cube([ 3, 36, 20 ]);
translate([ -1, 208, -55 ]) cube([ 3, 18, 15 ]);

//translate([ -1, 123, -72 ]) cube([ 3, 18, 22 ]);
//translate([ -1, 95, -61 ]) cube([ 3, 26, 11 ]);
translate([ -1, 47, -61 ]) cube([ 3, 53, 23 ]);
translate([ -1, 27, -53 ]) cube([ 3, 18, 15 ]);
translate([ -1, -1, -53 ]) cube([ 3, 26, 36 ]);

translate([ -1, 290, -83 ]) cube([ 3, 31, 21 ]);
translate([ -1, 228, -83 ]) cube([ 3, 60, 21 ]);
translate([ -1, 208, -83 ]) cube([ 3, 18, 26 ]);
translate([ -1, 171, -83 ]) cube([ 3, 35, 7 ]);
//translate([ -1, 143, -72 ]) cube([ 3, 26, 15 ]);
translate([ -1, 61, -86 ]) cube([ 3, 39, 23 ]);
translate([ -1, 47, -73 ]) cube([ 3, 12, 10 ]);
translate([ -1, -1, -73 ]) cube([ 3, 46, 18 ]);

translate([ -1, 171, -97 ]) cube([ 3, 44, 12 ]);
translate([ -1, 123, -97 ]) cube([ 3, 46, 21 ]);
translate([ -1, 31, -93 ]) cube([ 3, 28, 18 ]);
translate([ -1, -1, -93 ]) cube([ 3, 30, 18 ]);

translate([ -1, 357, -83 ]) cube([ 3, 32, 21 ]);
translate([ -1, 323, -100 ]) cube([ 3, 32, 38 ]);
translate([ -1, 265, -108 ]) cube([ 3, 56, 23 ]);
translate([ -1, 217, -108 ]) cube([ 3, 46, 23 ]);
translate([ -1, 158, -114 ]) cube([ 3, 27, 15 ]);
translate([ -1, 123, -114 ]) cube([ 3, 33, 15 ]);
translate([ -1, 102, -114 ]) cube([ 3, 19, 38 ]);
translate([ -1, 61, -106 ]) cube([ 3, 39, 18 ]);
translate([ -1, 47, -106 ]) cube([ 3, 12, 11 ]);
translate([ -1, -1, -118 ]) cube([ 3, 46, 23 ]);

translate([ -1, 499, -85 ]) cube([ 3, 32, 33 ]);
translate([ -1, 481, -68 ]) cube([ 3, 16, 16 ]);
translate([ -1, 421, -68 ]) cube([ 3, 58, 23 ]);
translate([ -1, 391, -68 ]) cube([ 3, 28, 23 ]);

translate([ -1, 391, -83 ]) cube([ 3, 12, 13 ]);

translate([ -1, 455, -96 ]) cube([ 3, 42, 26 ]);
translate([ -1, 437, -96 ]) cube([ 3, 16, 26 ]);
translate([ -1, 405, -106 ]) cube([ 3, 30, 36 ]);
translate([ -1, 357, -114 ]) cube([ 3, 46, 29 ]);
translate([ -1, 323, -125 ]) cube([ 3, 32, 23 ]);
translate([ -1, 295, -125 ]) cube([ 3, 26, 15 ]);
translate([ -1, 247, -131 ]) cube([ 3, 46, 21 ]);
translate([ -1, 217, -131 ]) cube([ 3, 28, 21 ]);
translate([ -1, 187, -125 ]) cube([ 3, 28, 26 ]);
translate([ -1, 169, -125 ]) cube([ 3, 16, 9 ]);
translate([ -1, 102, -131 ]) cube([ 3, 37, 15 ]);
translate([ -1, 47, -131 ]) cube([ 3, 53, 23 ]);
translate([ -1, 27, -131 ]) cube([ 3, 18, 11 ]);

translate([ -1, 499, -110 ]) cube([ 3, 32, 23 ]);
translate([ -1, 485, -110 ]) cube([ 3, 12, 12 ]);

translate([ -1, 511, -129 ]) cube([ 3, 20, 17 ]);
translate([ -1, 485, -129 ]) cube([ 3, 24, 17 ]);
translate([ -1, 469, -119 ]) cube([ 3, 14, 21 ]);
translate([ -1, 437, -119 ]) cube([ 3, 30, 21 ]);
translate([ -1, 405, -131 ]) cube([ 3, 30, 23 ]);
translate([ -1, 389, -131 ]) cube([ 3, 14, 15 ]);

translate([ -1, 485, -150 ]) cube([ 3, 46, 19 ]);
translate([ -1, 437, -150 ]) cube([ 3, 46, 29 ]);
translate([ -1, 389, -150 ]) cube([ 3, 46, 17 ]);
translate([ -1, 357, -150 ]) cube([ 3, 30, 34 ]);
translate([ -1, 295, -150 ]) cube([ 3, 60, 23 ]);
translate([ -1, 265, -150 ]) cube([ 3, 28, 17 ]);
translate([ -1, 217, -150 ]) cube([ 3, 46, 17 ]);
translate([ -1, 169, -150 ]) cube([ 3, 46, 23 ]);
translate([ -1, 141, -150 ]) cube([ 3, 26, 34 ]);
translate([ -1, 113, -150 ]) cube([ 3, 26, 17 ]);
translate([ -1, 65, -150 ]) cube([ 3, 46, 17 ]);
translate([ -1, 27, -150 ]) cube([ 3, 36, 17 ]);
translate([ -1, -1, -150 ]) cube([ 3, 26, 30 ]);

/// Grundmauer ///////////////////////////////////////



// Seilzugschacht
translate([ 150, -148, -70 ]) cube([ 460, 152, 20 ]);
for (i = [ 0 : 20.37 : 420 ]) 
{
  translate([ 167+i, -131, -50 ]) cube([ 18, 128, 2 ]);
}
translate([ 150, -148, -50 ]) cube([ 15, 150, 2 ]);
translate([ 595, -148, -50 ]) cube([ 15, 150, 2 ]);
translate([ 150, -148, -50 ]) cube([ 460, 15, 2 ]);



difference() { union() {
//translate([ 0, 0, 0 ]) cube([ 1000, 530, 20 ]); // Boden

translate([ 0, 0, 0 ]) cube([ 1000, Mauer, 550 ]);
translate([ 0, 530-Mauer, 0 ]) cube([ 1000, Mauer, 550 ]);
translate([ 0, 0, 0 ]) cube([ Mauer, 530, 550 ]);
translate([ 1000-Mauer, 0, 0 ]) cube([ Mauer, 530, 550 ]);

translate([ 0, 1, 0 ]) rotate([90,0,0]) scale(2) surface(file="500x275.inc");
translate([ 0, 529, 550 ]) rotate([-90,0,0]) scale(2) surface(file="500x275.inc");
translate([ 1, 0, 0 ]) rotate([0,-90,0]) scale(2) surface(file="275x265.inc");
translate([ 999, 0, 550 ]) rotate([0,90,0]) scale(2) surface(file="275x265.inc");


}
// Fensterdurchbruch /////////////////////////////////////////////////////
// Vorne
translate([ 50, -1, 340 ]) cube([ 300, Mauer+2, 150 ]);
translate([ 50-6, -1, 340 ]) cube([ 312, 3, 156 ]);

translate([ 650, -1, 340 ]) cube([ 300, Mauer+2, 150 ]);
translate([ 650-6, -1, 340 ]) cube([ 312, 3, 156 ]);

translate([ 150, Mauer+1, 0 ]) rotate([90,0,0]) cylinder(Mauer+3, r=50 );
translate([ 150, 2, 0 ]) rotate([90,0,0]) cylinder(3, r=56 );

translate([ 500, Mauer+1, 0 ]) rotate([90,0,0]) cylinder(Mauer+3, r=50 );
translate([ 500, 2, 0 ]) rotate([90,0,0]) cylinder(3, r=56 );

translate([ 850, Mauer+1, 0 ]) rotate([90,0,0]) cylinder(Mauer+3, r=50 );
translate([ 850, 2, 0 ]) rotate([90,0,0]) cylinder(3, r=56 );

// Hinten
translate([ 50, 529-Mauer, 340 ]) cube([ 100, Mauer+2, 150 ]);
translate([ 50-6, 530-2, 340 ]) cube([ 112, 3, 156 ]);

// Links
translate([ -1, 50, 340 ]) cube([ Mauer+2, 200, 150 ]);
translate([ -1, 50-6, 340 ]) cube([ 3, 212, 156 ]);

// Rechts
translate([ 1000-Mauer-1, 50, 340 ]) cube([ Mauer+2, 200, 150 ]);
translate([ 1000-1, 50-6, 340 ]) cube([ 3, 212, 156 ]);

translate([ 1000-Mauer-1, 165, 140 ]) cube([ Mauer+2, 84, 110 ]);
translate([ 1000-1, 165-6, 140 ]) cube([ 3, 96, 116 ]);

translate([ 1000-Mauer-1, 285, 140 ]) cube([ Mauer+2, 84, 110 ]);
translate([ 1000-1, 285-6, 140 ]) cube([ 3, 96, 116 ]);

translate([ 1000-Mauer-1, 185, 72 ]) cube([ Mauer+2, 38, 10 ]);

// Fensterdurchbruch /////////////////////////////////////////////////////



// Tuer
translate([ -1, 100, -200+122 ]) cube([ Mauer+2, 108, 204 ]);
translate([ -1, 100-6, -200+124 ]) cube([ 3, 120, 210 ]);
// Tuer
translate([ 1000-Mauer-1, 32, -200+64 ]) cube([ Mauer+2, 108, 204 ]);
translate([ 1000-1, 32-6, -200+64 ]) cube([ 3, 120, 210 ]);
// Tuer
translate([ 1000-Mauer-1, 396, -200+64 ]) cube([ Mauer+2, 100, 200 ]);
translate([ 1000-1, 396-6, -200+64 ]) cube([ 3, 112, 206 ]);
}

// Fensterbank
translate([ 50-4, -5, 340-6 ]) cube([ 308, Mauer+9, 6 ]); // Vorne
translate([ 650-4, -5, 340-6 ]) cube([ 308, Mauer+9, 6 ]); // Vorne
translate([ 50-4, 530-Mauer-4, 340-6 ]) cube([ 108, Mauer+9, 6 ]); // Hinten
translate([ -5, 50-4, 340-6 ]) cube([ Mauer+9, 208, 6 ]); // Links
translate([ 1000-Mauer-4, 50-4, 340-6 ]) cube([ Mauer+9, 208, 6 ]); // Rechts
translate([ 1000-Mauer-4, 165-4, 140-6 ]) cube([ Mauer+9, 92, 6 ]); // Rechts
translate([ 1000-Mauer-4, 285-4, 140-6 ]) cube([ Mauer+9, 92, 6 ]); // Rechts

// Fenster /////////////////////////////////////////////////////////////
// Vorne unten
difference(){
translate([ 150, 17, 0 ]) rotate([90,0,0]) cylinder(6, r=50 );
translate([ 150, Mauer+1, 0 ]) rotate(a=[90,0,0]) cylinder(Mauer+3, r=44 );}
translate([ 146, 11, 0 ]) cube([ 8, 6, 45 ]);
translate([ 148, 9, 6 ]) cube([ 4, 6, 45 ]);
translate([ 100, 11, 0 ]) cube([ 100, 6, 10 ]);
translate([ 105, 8, 3 ]) cube([ 90, 4, 4 ]);
difference(){
translate([ 500, 17, 0 ]) rotate([90,0,0]) cylinder(6, r=50 );
translate([ 500, Mauer+1, 0 ]) rotate([90,0,0]) cylinder(Mauer+2, r=44 );}
translate([ 496, 11, 0 ]) cube([ 8, 6, 45 ]);
translate([ 498, 9, 6 ]) cube([ 4, 6, 45 ]);
translate([ 450, 11, 0 ]) cube([ 100, 6, 10 ]);
translate([ 455, 8, 3 ]) cube([ 90, 4, 4 ]);

// Vorne links
translate([  50, 15, 340 ]) cube([ 300, 6, 16 ]);
translate([  50,  9, 345 ]) cube([ 300, 6, 6 ]);
translate([  50, 15, 340 ]) cube([ 7, 6, 150 ]);
translate([ 143, 15, 340 ]) cube([ 14, 6, 150 ]);
translate([ 147, 12, 354 ]) cube([ 6, 6, 131 ]);
translate([ 243, 15, 340 ]) cube([ 14, 6, 150 ]);
translate([ 247, 12, 354 ]) cube([ 6, 6, 131 ]);
translate([ 343, 15, 340 ]) cube([ 7, 6, 150 ]);
translate([  50, 15, 483 ]) cube([ 300, 6, 7 ]);

// Vorne rechts
translate([ 650, 15, 340 ]) cube([ 300, 6, 16 ]);
translate([ 650,  9, 345 ]) cube([ 300, 6, 6 ]);
translate([ 650, 15, 340 ]) cube([ 7, 6, 150 ]);
translate([ 743, 15, 340 ]) cube([ 14, 6, 150 ]);
translate([ 747, 12, 354 ]) cube([ 6, 6, 131 ]);
translate([ 843, 15, 340 ]) cube([ 14, 6, 150 ]);
translate([ 847, 12, 354 ]) cube([ 6, 6, 131 ]);
translate([ 943, 15, 340 ]) cube([ 7, 6, 150 ]);
translate([ 650, 15, 483 ]) cube([ 300, 6, 7 ]);

// Hinten
translate([  50, 509, 340 ]) cube([ 100, 6, 16 ]);
translate([  50, 515, 345 ]) cube([ 100, 6, 6 ]);
translate([  50, 509, 340 ]) cube([ 7, 6, 150 ]);
translate([ 143, 509, 340 ]) cube([ 7, 6, 150 ]);
translate([  50, 509, 483 ]) cube([ 100, 6, 7 ]);

// Links
translate([ 15, 50, 340 ]) cube([ 6, 200, 16 ]);
translate([  9, 50, 345 ]) cube([ 6, 200, 6 ]);
translate([  15,  50, 340 ]) cube([ 6, 7, 150 ]);
translate([  15, 143, 340 ]) cube([ 6, 14, 150 ]);
translate([ 12, 147, 354 ]) cube([ 6, 6, 131 ]);
translate([ 15, 243, 340 ]) cube([ 6, 7, 150 ]);
translate([ 15, 50, 483 ]) cube([ 6, 300, 7 ]);

// Rechts
translate([ 979, 50, 340 ]) cube([ 6, 200, 16 ]);
translate([ 985, 50, 345 ]) cube([ 6, 200, 6 ]);
translate([ 979,  50, 340 ]) cube([ 6, 7, 150 ]);
translate([ 979, 143, 340 ]) cube([ 6, 14, 150 ]);
translate([ 982, 147, 354 ]) cube([ 6, 6, 131 ]);
translate([ 979, 243, 340 ]) cube([ 6, 7, 150 ]);
translate([ 979, 50, 483 ]) cube([ 6, 300, 7 ]);

// Rechts unten
translate([ 979, 165, 140 ]) cube([ 6, 84, 16 ]);
translate([ 985, 165, 145 ]) cube([ 6, 84, 6 ]);
translate([ 979, 165, 140 ]) cube([ 6, 7, 110 ]);
translate([ 979, 242, 140 ]) cube([ 6, 7, 110 ]);
translate([ 979, 165, 243 ]) cube([ 6, 84, 7 ]);

translate([ 979, 285, 140 ]) cube([ 6, 84, 16 ]);
translate([ 985, 285, 145 ]) cube([ 6, 84, 6 ]);

translate([ 979, 285, 140 ]) cube([ 6, 7, 110 ]);
translate([ 979, 362, 140 ]) cube([ 6, 7, 110 ]);
translate([ 979, 285, 243 ]) cube([ 6, 84, 7 ]);
// Fenster /////////////////////////////////////////////////////////////


// Tueren //////////////////////////////////////////////////////////////
translate([ 20, 100, -200+124 ]) cube([ 8, 108, 204 ]);
translate([ 18, 109, -200+124 ]) cube([ 10, 90, 195 ]);
translate([ 18, 199, 90 ]) cylinder( 18, r=3, $fn=20 );
translate([ 18, 199, -60 ]) cylinder( 18, r=3, $fn=20 );
difference(){
translate([ 15, 118, 15 ]) cube([ 3,5,15 ]);
translate([ 14, 119.5, 18 ]) cube([ 15,2,3 ]);}
translate([ 12, 119, 25 ]) cube([ 7,12,3 ]);
// Treppenstufe (2*Hoehe + Tiefe = 63cm)
translate([ -30, 91, -94 ]) cube([ 35, 126, 18 ]); // 18 hoch, 27 tief

translate([ 1000-30, 32, -200+64 ]) cube([ 8, 108, 204 ]);
translate([ 1000-30, 41, -200+64 ]) cube([ 11, 90, 195 ]);
translate([ 1000-21, 41, 30 ]) cylinder( 18, r=3, $fn=20 );
translate([ 1000-21, 41, -125 ]) cylinder( 18, r=3, $fn=20 );
difference(){
translate([ 1000-20, 118, -41 ]) cube([ 4,5,15 ]);
translate([ 1000-20, 119.5, -38 ]) cube([ 15,2,3 ]);}
translate([ 1000-20, 110, -31 ]) cube([ 7,12,3 ]);

difference(){
union(){
translate([ 1000-30, 396, -200+64 ]) cube([ 8, 100, 200 ]);
translate([ 1000-30, 401, -200+64 ]) cube([ 11, 90, 195 ]);
translate([ 1000-30, 415, -2 ]) cube([ 13, 29, 44 ]);
translate([ 1000-30, 447, -2 ]) cube([ 13, 29, 44 ]);}
union(){
translate([ 1000-32, 417, 0 ]) cube([ 16, 25, 38 ]);
translate([ 1000-32, 449, 0 ]) cube([ 16, 25, 38 ]);}}
translate([ 1000-21, 491, 20 ]) cylinder( 15, r=3, $fn=20 );
translate([ 1000-21, 491, -115 ]) cylinder( 15, r=3, $fn=20 );
difference(){
translate([ 1000-20, 406, -41 ]) cube([ 4,5,15 ]);
translate([ 1000-20, 407.5, -38 ]) cube([ 15,2,3 ]);}
translate([ 1000-20, 407, -31 ]) cube([ 7,12,3 ]);
// Tueren //////////////////////////////////////////////////////////////


// "Fo"
translate([ -3, 30-4, 230-6 ]) cube([ 4, 80, 57 ]); // Links
translate([ 1000, 30-4, 230-6 ]) cube([ 4, 80, 57 ]); // Rechts

// Treppenstufen (2*Hoehe + Tiefe = 63cm)
translate([ 960, -110, -150 ]) cube([ 50, 110, 12 ]); // 18 hoch, 27 tief
translate([ 960-27, -110, -138 ]) cube([ 50, 110, 18 ]);
difference() { 
translate([ 900-27*2, -110, -138+18 ]) cube([ 110, 110, 18 ]);
union(){
translate([ 894, -111, -104 ]) cube([ 2, 110, 4 ]);
translate([ 922, -111, -104 ]) cube([ 2, 110, 4 ]);
}}
translate([ 845-27, -110, -138+18*2 ]) cube([ 50, 110, 18 ]);
translate([ 845-27*1, -110, -138+18*3 ]) cube([ 27, 110, 18 ]);
translate([ 910, -110, -150 ]) cube([ 100, 15, 48 ]);

translate([ 0, -148, -82 ]) cube([ 830, 150, 10 ]);
translate([ 150, -148, -80 ]) cube([ 460, 150, 10 ]);

// Glocke
translate([ 486, 0, 405 ]) rotate([90,0,0]) cylinder(15, r1=12, r2=5 );
translate([ 486, 0, 405 ]) rotate([90,0,0]) cylinder(17, r=2.5, $fn=20 );
translate([ 514, 0, 405 ]) rotate([90,0,0]) cylinder(15, r1=12, r2=5 );
translate([ 514, 0, 405 ]) rotate([90,0,0]) cylinder(17, r=2.5, $fn=20 );
translate([ 500, 0, 427 ]) cube([ 20, 18, 20 ], center=true);
translate([ 500, -2, 407 ]) cube([ 4, 6, 20 ], center=true);


// Kabelschacht
difference() { 
hull() {
translate([ -30, -20, -62 ]) rotate([ 0, 90, 0 ]) cylinder(180, r=10 );
translate([ -30, -130, -62 ]) rotate([ 0, 90, 0 ]) cylinder(180, r=10 );
}
hull() {
translate([ -31, -20, -62 ]) rotate([0,93,0]) cylinder(10, r=7 );
translate([ -31, -130, -62 ]) rotate([0,93,0]) cylinder(10, r=7 );
}}
translate([ -3, -125, -52 ]) cube([ 2, 102.5, 4 ]);
translate([ 58, -125, -52 ]) cube([ 2, 102.5, 4 ]);
translate([ 118, -125, -52 ]) cube([ 2, 102.5, 4 ]);
translate([ -3, -125, -52 ]) cube([ 4, 102.5, 2 ]);
translate([ 58, -125, -52 ]) cube([ 4, 102.5, 2 ]);
translate([ 118, -125, -52 ]) cube([ 4, 102.5, 2 ]);


translate([ 608, -120, -67 ]) rotate([0,-1,0]) Blechkanal( 280, 1, 25, 40  );


// Support ///////////////////////////////////////////////////////////////
difference() 
{ 
  union() 
  {
    translate([ 18, 0, -184 ]) cube([ 12, 530, 37 ]);
    translate([  0, 0, -184 ]) cube([ 12, 530, 37 ]);

    translate([ 988, 0, -184 ]) cube([ 12, 530, 37 ]);
    translate([ 970, 0, -184 ]) cube([ 12, 530, 37 ]);

    rotate(a=90,v=[0,0,1]) translate([ 0,-283, 0 ])
    {
      translate([ 0, -672, -184 ]) cube([ 12, 912, 37 ]);
      translate([ 18, -672, -184 ]) cube([ 12, 912, 37 ]);
    }
    rotate(a=90,v=[0,0,1]) translate([ 202,-283, 0 ])
    {
      translate([ 316, -672, -184 ]) cube([ 12, 912, 37 ]);
      translate([  298, -672, -184 ]) cube([ 12, 912, 37 ]);
    }
  }

for (i = [ 0 : 20.15 : 1020 ])
{
  translate([ -12+i, -15, -148]) rotate(a=45,v=[0,1,0]) cube([10, 560, 10]);
  translate([ -9+i, -13, -183 ]) cube([8, 560, 35]); // Trenner
}
for (i = [ 0 : 20 : 550 ])
{
  translate([-12, -5+i, -155]) rotate(a=45,v=[1,0,0]) cube([1030, 10, 10]);
  translate([ -10, -9+i, -183 ]) cube([1030, 8, 35]); // Trenner
}
}

difference(){ 
translate([ 0, 0, -193 ]) cube([ 1000, 530, 15 ]);
translate([ 100, 100, -194 ]) cube([ 800, 330, 17 ]);
}


// Support Kabelschacht
for (j = [ 0 : 29 : 120 ]) 
{
  translate([ -29, 92+j, -193 ]) cube([ 8, 8, 90 ]);
  translate([ -28, 93+j, -193 ]) cube([ 6, 6, 102 ]);
}
translate([ -30, 90, -193 ]) cube([ 30, 128, 15 ]);

for (j = [ 0 : 29 : 120 ]) 
{
  for (i = [ 0 : 29.1 : 810 ]) 
  {
    translate([ 1+i, -147+j, -193 ]) cube([ 10, 10, 100 ]); 
    translate([ 2+i, -146+j, -193 ]) cube([ 8, 8, 115 ]);
//    translate([ 1+i, -147, -193 ]) cube([ 18, 10, 105 ]);
//    translate([ 2+i, -146, -193 ]) cube([ 16, 8, 115 ]);
  }
}
for (j = [ 29 : 29 : 120 ]) 
{
  translate([ -26, -150+j, -193 ]) cube([ 8, 8, 115 ]);
  translate([ -25, -149+j, -193 ]) cube([ 6, 6, 122 ]);
}
for (j = [ 0 : 27 : 90 ]) 
{
  translate([ 818, -109+j, -193 ]) cube([ 10, 10, 80 ]);
  translate([ 819, -108+j, -193 ]) cube([ 8, 8, 92 ]);
}
for (j = [ 0 : 27 : 90 ]) 
{
  for (i = [ 0 : 28 : 40 ]) 
  {
    translate([ 846+i, -109+j, -193 ]) cube([ 10, 10, 63 ]);
    translate([ 847+i, -108+j, -193 ]) cube([ 8, 8, 75 ]);
  }
}
for (j = [ 27 : 27 : 90 ]) 
{
  translate([ 902, -109+j, -193 ]) cube([ 10, 10, 63 ]);
  translate([ 903, -108+j, -193 ]) cube([ 8, 8, 75 ]);
}
for (j = [ 27 : 27 : 90 ]) 
{
  translate([ 934, -109+j, -193 ]) cube([ 10, 10, 43 ]);
  translate([ 935, -108+j, -193 ]) cube([ 8, 8, 55 ]);
}
for (j = [ 0 : 27 : 90 ]) 
{
  for (i = [ 0 : 21 : 45 ]) 
  {
    translate([ 960+i, -109+j, -193 ]) cube([ 8, 8, 33 ]);
    translate([ 961+i, -108+j, -193 ]) cube([ 6, 6, 45 ]);
  }
}
for (i = [ 0 : 24 : 25 ]) 
{
  translate([ 910+i, -109, -193 ]) cube([ 10, 10, 33 ]);
  translate([ 911+i, -108, -193 ]) cube([ 8, 8, 45 ]);
}
translate([ 820, -146, -193 ]) cube([ 10, 10, 100 ]);
translate([ 821, -145, -193 ]) cube([ 8, 8, 110 ]);

for (i = [ 0 : 24 : 25 ]) 
{
  translate([ 847+i, -124, -193 ]) cube([ 8, 8, 110 ]);
  translate([ 848+i, -123, -193 ]) cube([ 6, 6, 123 ]);
}
translate([ -30, -150, -193 ]) cube([ 1040, 150, 15 ]);


// Support Fenster
for (i = [ 0 : 33.3 : 240 ]) 
{
  translate([ 81+i, 17, 354 ]) cube([ 4, 4, 132 ]);
  translate([ 79+i, 15, 360 ]) cube([ 8, 8, 120 ]);
  translate([ 681+i, 17, 354 ]) cube([ 4, 4, 132 ]);
  translate([ 679+i, 15, 360 ]) cube([ 8, 8, 120 ]);
  
  if(i!=66.6){if(i!=166.5){
    translate([ 80+i, 17, 354 ]) cube([ 6, 6, 10 ]);
    translate([ 81+i, 4, 480 ]) cube([ 4, 4, 12 ]);
    translate([ 79+i, 15, 360 ]) rotate([6,0,0]) cube([ 8, 8, 125 ]);
    translate([ 680+i, 17, 354 ]) cube([ 6, 6, 10 ]);
    translate([ 681+i, 4, 480 ]) cube([ 4, 4, 12 ]);
    translate([ 679+i, 15, 360 ]) rotate([6,0,0]) cube([ 8, 8, 125 ]);}}

}

for (i = [ 0 : 33.3 : 40 ]) 
{
  translate([ 81+i, 509, 354 ]) cube([ 4, 4, 132 ]);
  translate([ 79+i, 507, 360 ]) cube([ 8, 8, 120 ]);

  translate([ 80+i, 509, 354 ]) cube([ 6, 6, 10 ]);
  translate([ 81+i, 522, 480 ]) cube([ 4, 4, 12 ]);
  translate([ 79+i, 507, 360 ]) rotate([-6,0,0]) cube([ 8, 8, 125 ]);
}

for (i = [ 0 : 33.3 : 140 ]) 
{
  translate([ 17, 81+i, 354 ]) cube([ 4, 4, 132 ]);
  translate([ 15, 79+i, 360 ]) cube([ 8, 8, 120 ]);
  translate([ 979, 81+i, 354 ]) cube([ 4, 4, 132 ]);
  translate([ 977, 79+i, 360 ]) cube([ 8, 8, 120 ]);

  if(i!=66.6){
  translate([ 17, 80+i, 354 ]) cube([ 6, 6, 10 ]);
  translate([ 4, 81+i, 480 ]) cube([ 4, 4, 12 ]);
  translate([ 15, 79+i, 360 ]) rotate([0,-6,0]) cube([ 8, 8, 125 ]);
  translate([ 979, 80+i, 354 ]) cube([ 6, 6, 10 ]);
  translate([ 993, 81+i, 480 ]) cube([ 4, 4, 12 ]);
  translate([ 979, 79+i, 360 ]) rotate([0,6,0]) cube([ 8, 8, 125 ]);}
}

for (i = [ 0 : 25 : 30 ]) 
{
  translate([ 979, 192.5+i, 156 ]) cube([ 4, 4, 88 ]);
  translate([ 977, 190.5+i, 160 ]) cube([ 8, 8, 80 ]);
  translate([ 979, 312+i, 156 ]) cube([ 4, 4, 88 ]);
  translate([ 977, 310+i, 160 ]) cube([ 8, 8, 80 ]);

  translate([ 979, 191.5+i, 156 ]) cube([ 6, 6, 10 ]);
  translate([ 993, 192.5+i, 240 ]) cube([ 4, 4, 15 ]);
  translate([ 977, 190.5+i, 160 ]) rotate([0,9,0]) cube([ 8, 8, 88 ]);
  translate([ 979, 311+i, 156 ]) cube([ 6, 6, 10 ]);
  translate([ 993, 312+i, 240 ]) cube([ 4, 4, 15 ]);
  translate([ 977, 310+i, 160 ]) rotate([0,9,0]) cube([ 8, 8, 88 ]);
}

translate([ 983, 203, 65 ]) cube([ 4, 4, 20 ]);

/// Support ///////////////////////////////////////////////////////////////


// Glasbausteine 
difference(){
translate([ 800, 5, -1 ]) cube([ 100, Mauer-5, 52 ]);
translate([ 830, -1, 5 ]) cube([ 40, Mauer+3, 40 ]);}

translate([ 848.5, 7, 5 ]) cube([ 3, Mauer-7, 45 ]);
translate([ 828, 7, 23.5 ]) cube([ 45, Mauer-7, 3 ]);







