/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1744562
 */

$fn=32;
difference() {
    union() {
        difference() {
            minkowski() {
                sphere(r=2);
                cylinder(r=5, h=15);
            }
            translate([0, 8.5, 8.5]) {
                cube([2, 17, 17], center=true);
            }
        }
        scale([0.8, 0.8, 0.8]) {
            minkowski() {
                sphere(r=2);
                cylinder(r=5, h=17.5);
            }
        }
    }
    translate([-10, -10, -3]) {
        cube([20, 20, 4]);
    }
    cylinder(r=3.1, h=15);
}