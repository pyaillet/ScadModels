/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1678352
 */

trous = [12, 11, 10, 9, 8, 7, 6, 5, 4, 3];
pos = [8, 22, 35, 47, 58, 68, 77, 85, 92, 98, 103];

union() {
    difference() {
        cube([16,pos[len(pos)-1]+trous[len(trous)-1],30]);
        for(i = [0:len(pos)-1]) {
            translate([8,pos[i],-10]) {
                cylinder(h = 50, r=(trous[i]/2.0));
            }
        }
    }
    translate([-3, -10, 4]) {
        difference() {
            minkowski() {
                rotate([0, 90, 0]) {
                    cylinder(h = 2, r = 4);
                }
                cube([2, pos[len(pos)-1]+trous[len(trous)-1]+20, 22]);
            }
            translate([-1, 3, 10]) {
                rotate([0, 90, 0]) {
                    cylinder(h = 6, r = 4);
                }
            }
            translate([-1, pos[len(pos)-1]+20, 10]) {
                rotate([0, 90, 0]) {
                    cylinder(h = 6, r = 4);
                }
            }
        }
    }
}