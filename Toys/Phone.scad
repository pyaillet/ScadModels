/**
 * This work is licensed under a <a rel="license" href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution 4.0 Unported License</a>.
 * You can find this on thingiverse: http://www.thingiverse.com/thing:1800531
 */

module body() {
    translate([1, 1, 1]) {
        minkowski() {
            $fn=16;
            cube([72, 34, 7]);
            sphere(r=2);
        }
    }
}

module antenna() {
    translate([-8, 4.5, 4.5]) {
        rotate([0, 90, 0]) {
            cylinder(r=2, h=10);
        }
    }
}

module keys() {
    
numbers = [
    ["1", "2", "3"], 
    ["4", "5", "6"],
    ["7", "8", "9"],
    ["*", "0", "#"]];
    
    taille = 6.5;
    espacement = 2;
    
    for(i = [0:2]) {
        for(j = [1:4]) {
            translate([28+j*(taille+espacement), 7+i*(taille+espacement), 7]) {
                difference() {
                    cube([taille, taille, 3]);
                    translate([5.7, 1.5, 2.5]) {
                        rotate([0, 0, 90]) {
                            scale([0.5, 0.5, 1]) {
                                linear_extrude(1) {
                                    text(numbers[j-1][i]);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

module phone() {
    difference() {
        body();
        translate([3.5, 3.5, 9.5]) {
            cube([30, 30, 5]);
        }
        translate([35, 5.5, 9.5]) {
            cube([35, 26, 5]);
        }
    }
    keys();
}

rotate([0, 90, 0]) {
    scale([1.25, 1.25, 1.25]) {
        phone();
    }
}