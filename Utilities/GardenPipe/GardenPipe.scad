/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 */

use <curvedPipe.scad>

curvedPipe([
        [0,0,0],
        [0,0,50],
        [50,0,70]
    ],
    2,
    [27, 2],
    52,
    50);
    
translate([0, 0, 20]) {
    difference() {
        cube([90, 90, 3], center=true);
        translate([0, 0, -5]) {
            cylinder(r=25.5, h= 20);
        }
    }
}
    