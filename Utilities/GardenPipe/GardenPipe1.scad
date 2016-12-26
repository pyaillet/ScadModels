/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 */

use <curvedPipe.scad>

curvedPipe([
        [0,0,0],
        [0,0,30],
        [20,0,50]
    ],
    2,
    [27, 2],
    53,
    51);
    
*translate([0, 0, 0]) {
    difference() {
        cube([90, 90, 3], center=true);
        translate([0, 0, -5]) {
            cylinder(r=26, h= 20);
        }
    }
}
    