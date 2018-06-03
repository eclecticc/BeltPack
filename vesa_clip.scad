include <MCAD/nuts_and_bolts.scad>;
include <MCAD/boxes.scad>;

holes = 75;
width = 10;
thick = 4;
bolt_size = 3;

difference() {
    translate([0, width/2, 0]) roundedBox([holes+width, width*2, thick], width/2, true);
    // Bolt and nut holes
    for (i = [-holes/2, holes/2]) {
        translate([i, 0, 0]) {
            translate([0, 0, -thick]) boltHole(bolt_size, length=thick*2);
            nutHole(bolt_size);
        }
    }
    translate([0, -width/2, 0]) roundedBox([holes-width, width*2, thick], width/2, true);
}