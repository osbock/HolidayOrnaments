scale(2) {
    sphere(6);
    translate([0,0,5]) {
        cylinder(2, $fn=45);
    }
    translate([0,0,7])
    rotate([0,90])
    difference() {
        cylinder(h=0.5, d=1.25,
        $fn=45, center=true);
        cylinder(d=1, $fn=45,
        center=true);
    }
}