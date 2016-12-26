/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1995025
 */

width = 12;
corner_radius = 70;
depth = 9;
thickness = 1.8;
chamfer_size=0.5;

module profil() {
    difference() {
        polygon([
            [0, chamfer_size],
            [0, width-chamfer_size],
            [chamfer_size, width],
            [depth, width],
            [depth, 0],
            [chamfer_size, 0]
        ]);
        translate([thickness/2, thickness/2]) {
            square([depth-thickness, width-thickness]);
        }
    }
}

$fn=128;
intersection() {
    rotate_extrude(convexity = 10)
    translate([corner_radius-depth, 0, 0])
    profil();
    translate([-5, -5, 0]) {
        cube([corner_radius+20, corner_radius+20 , corner_radius]);
    }
}