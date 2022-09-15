$fn=360;

module box()
{
   minkowski()
    {
        cube([150,100,80]);
        cylinder(r=10,h=1);
    }
}

module messbox()
{
    difference()
    {
        box();
        
        translate([0,0,0])cube([150,100,70]);
    }
}

module trolly()
{
    difference()
    {
        messbox();
        
        //linkes M16 loch
        translate([150,50,40])rotate([0,90,0])cylinder(r=8,h=15);
        
        //voderseite 7 löcher M12
        //-20 bis 150   17.5
        
        //obere Reihe
        translate([15,110,30])rotate([90,90,0])cylinder(r=6,h=15);
        translate([55,110,30])rotate([90,90,0])cylinder(r=6,h=15);
        translate([95,110,30])rotate([90,90,0])cylinder(r=6,h=15);
        translate([135,110,30])rotate([90,90,0])cylinder(r=6,h=15);
        
        // untere Reihe
        translate([35,110,50])rotate([90,90,0])cylinder(r=6,h=15);
        translate([75,110,50])rotate([90,90,0])cylinder(r=6,h=15);
        translate([115,110,50])rotate([90,90,0])cylinder(r=6,h=15);
        
    }
}


//messbox();
trolly();

