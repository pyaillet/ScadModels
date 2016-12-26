/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1837609
 */

$fn = 24;
inner_diam = 1.75;

// inner ring
difference() {
    union() {
        cylinder(r=inner_diam+3.25, h=1);
        translate([0, 0, 0.9]) {
            cylinder(r=inner_diam+0.75, h=10);
        }
    }
    translate([0, 0, -1]) {
        cylinder(r=inner_diam, h=20);
        translate([0, -0.95, 0]) {
            cube([10, inner_diam+0.15, 20]);
        }
    }
}

// outer ring
translate([20, 0, 0]) {
    difference() {
        cylinder(r=inner_diam+3.25, h=10);
        translate([0, 0, -1]) {
            cylinder(r=inner_diam+0.85, h=20);
            translate([0, -0.95, 0]) {
                cube([10, inner_diam+0.15, 20]);
            }
        }
    }
}