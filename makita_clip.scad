include <MCAD/nuts_and_bolts.scad>;
include <MCAD/boxes.scad>;

holes = [48.5, 59];
width = 10;
thick = 4;
bolt_size = 3;

difference() {
    translate([(holes[0]+width)/2, (holes[1]+width)/2, thick/2]) roundedBox([holes[0]+width, holes[1]+width, thick], width/2, true);
    // Bolt and nut holes
    for (i = [0, holes[0]]) {
        for (j = [0, holes[1]]) {
            translate([i + width/2, j + width/2]) {
                boltHole(bolt_size, length=thick*2);
                nutHole(bolt_size);
            }
        }
    }
    translate([holes[0]/2, 0]) cube([width, holes[1]+1, thick]);
}