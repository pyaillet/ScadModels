/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 */

little_base = 6;
height = 7;
depth = 8;
tall_base = 23;

module parrallelipipedic_trapeze(lb, tb, de, he) {
    a = [ 0, 0 ];
    b = [ 0, lb ];
    c = [ he, lb+((tb-lb) / 2) ];
    d = [ he, -((tb-lb) / 2) ];

    linear_extrude(de) {
        polygon([a, b, c,d ]);
    }
}

parrallelipipedic_trapeze(little_base, tall_base, depth, height);
translate([0,36,0]) {
    parrallelipipedic_trapeze(little_base, tall_base, depth, height);
}
translate([0, 0, -4.9]) {
    parrallelipipedic_trapeze(little_base+36, tall_base+36, 5, height);
}
