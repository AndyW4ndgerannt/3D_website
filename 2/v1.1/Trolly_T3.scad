$fn=18;

// Messbox
mbL = 150; // Länge
mbB = 150; // Breite 
mbH = 60; // Höhe

// Radien
rm12 = 5.1; // M12
rm16 = 7; // M16

// Ecken
cr0 = 5;


difference()
{
    // Box
    minkowski()
    {
        cube([mbL,mbB,mbH], center = true);
        cylinder(r = cr0, h = 1);
    }
    // Ausschnitt
    translate([0,0,2.5])
    minkowski()
    {
        cube([mbL-7.5,mbB-7.5,mbH-5], center = true);
        cylinder(r = cr0, h = 1);
    }
    // M12 Ausschnitt
    translate([mbL/2, 0, 0])rotate([0,90,0])cylinder(r = rm12, h = 10);
    // M16 Ausschnitt
    translate([0, mbB/2+5, 0])rotate([90,0,0])cylinder(r = rm16, h = 10);
    // 7 * M12 Ausschnitt
    // 4 * oben Höhe = 37.5
    translate([-mbL/2-5,-40,7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
    translate([-mbL/2-5,-15,7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
    translate([-mbL/2-5,10,7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
    translate([-mbL/2-5,35,7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
    // 3 * unten Höhe = 22.5
    translate([-mbL/2-5,-27.5,-7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
    translate([-mbL/2-5,-2.5,-7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
    translate([-mbL/2-5,22.5,-7.5])rotate([0,90,0])cylinder(r = rm12, h = 10);
}




