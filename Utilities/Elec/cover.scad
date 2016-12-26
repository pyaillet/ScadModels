/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1995025
 */

difference() {
    linear_extrude(18)
    minkowski() {
        circle(r=5);
        square([30, 30]);
    };
    translate([0.45, 0.45, -1.8]) {
        linear_extrude(18)
        minkowski() {
            circle(r=4.1);
            square([29.1, 29.1]);
        };
    }
    translate([15,0, 3.5]) {   
        cube([13, 50, 12], center=true);
    }
}