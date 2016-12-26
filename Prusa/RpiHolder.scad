/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 */

difference() {
    union() {
        translate([0, 0, -2.1]) {
            cylinder(r = 11.75, h = 10);
        }
        translate([3, 0, -3]) {
            cylinder(r = 11.75, h = 2);
        }
        difference() {
            translate([3, -46, 7]) {
                cube([12, 92, 30]);
            }
            translate([-14, -45, 8]) {
                cube([28, 90, 28]);
            }
            translate([-28, -45, 8]) {
                cube([40, 90, 28]);
            }
            translate([-40, -40, 8]) {
                cube([80, 80, 30]);
            }
        }
    }
    translate([-15, -15, -13.1]) {
        cube([20, 30, 20]);
    }
    translate([-77, -50, 0]) {
        cube([80, 100, 100]);
    }
}
