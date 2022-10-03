$fn=60;

messboxL = 150; // Länge
messboxB = 150; // Breite
messboxH = 80; // Höhe

// Radien der 7 M12 Löcher
rm12 = 6;

// Radius M16
rm16 = 8;

module box()
{
   minkowski()
    {
        cube([messboxL,messboxB,messboxH]);
        cylinder(r=10,h=1);
    }
}

module messbox()
{
    difference()
    {
        box();
        
        translate([0,0,0])cube([messboxL,messboxB,messboxH - 10]);
    }
}

module trolly()
{
    difference()
    {
        messbox();
        
        //linkes M16 loch
        translate([messboxL / 2,0,messboxH / 2])rotate([90,90,0])cylinder(r=rm12,h=15);
        //oberes M12 loch
        translate([-10, messboxB / 2,messboxH / 2])rotate([0,90,0])cylinder(r=rm16,h=15);
        
        //voderseite 7 löcher M12
        //-20 bis 150   17.5
        
        //obere Reihe
        translate([15,messboxB + 10,30])rotate([90,90,0])cylinder(r=rm12,h=15);
        translate([55,messboxB + 10,30])rotate([90,90,0])cylinder(r=rm12,h=15);
        translate([95,messboxB + 10,30])rotate([90,90,0])cylinder(r=rm12,h=15);
        translate([135,messboxB + 10,30])rotate([90,90,0])cylinder(r=rm12,h=15);
        
        // untere Reihe
        translate([35,messboxB + 10,50])rotate([90,90,0])cylinder(r=rm12,h=15);
        translate([75,messboxB + 10,50])rotate([90,90,0])cylinder(r=rm12,h=15);
        translate([115,messboxB + 10,50])rotate([90,90,0])cylinder(r=rm12,h=15);
        
    }
}


//messbox();
trolly();

