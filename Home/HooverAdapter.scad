/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1876674
 */

/* 
Mesures:
aspirateur: 14 => 20 => h = 21 , d = 11
balai: 8 => 12 => h = 70 , d = 17
*/

// Hoover small width
hv_sw = 14.5;
// Hoover big width
hv_bw = 20;
// Hoover depth
hv_de = 11;
// Hoover height
hv_he = 21;
// Hoover thickness = 3
hv_th = 4;

// Broom small width
br_sw = 8;
// Broom big width
br_bw = 12;
// Broom depth
br_de = 17;
// Broom height
br_he = 70;
// Broom thickness = 2
br_th = 2;
// Broom inside thickness = 3.5
br_it = 3.5;

// Total height
to_he = 80;
// margin
ma = 2;

module half() {
    difference() { 
        cube([hv_bw/2, hv_de, to_he]);
        translate([hv_bw-hv_sw, hv_de-hv_th, -ma]) {
               cube([hv_sw+ma, hv_de+ma, hv_he+ma]);
        }
        translate([-ma, -ma, 18]) {
            cube([br_sw/2+ma+1, br_de, br_he+ma]);
            cube([br_bw/2+ma+1, br_th+ma+ma/2, br_he+ma]);
            translate([0, br_th++ma+br_it, 10]) {
                cube([br_bw/2+ma+1, br_de, br_he+ma]);
            }
        }
    }
}

rotate([90, 0, 0]) {
    union() {
        half();
        mirror() {
            half();
        }
    }
}
