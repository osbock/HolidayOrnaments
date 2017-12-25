/*scale(6) {
    difference() {
        cube(4, center=true);
        translate([0, 0, -2])
        stdCylinder(d=1);
        rotate([90])
        stdCylinder();
        rotate([0,90])
        stdCylinder();
    }
    translate([0,0,2]) holder(0.5, 1, 0.2);
}*/

cubeOrnament(40);

module cubeOrnament(width=20, ledDiameter=6) {
    difference() {
        // base cube
        cube(width, center=true);
        
        // led hole
        translate([0, 0, -(width/2)])
        stdCylinder(h=width+1, d=ledDiameter);
        
        rotate([90])
        stdCylinder(h=width+1, d=width/2);
        
        rotate([0,90])
        stdCylinder(h=width+1, d=width/2);
    }
    
    // holder on top
    translate([0,0,width/2])
    holder(width/8, width/4, width/20);
}

module stdCylinder(h=5, d=2) {
    cylinder(h, d=d, $fn=70,center=true);
}

module holder(l=1, d=1, w=0.25) {
    // l=length, d=diameter, w=width
    // width is width of solid holder part
    facets = 90;
    rotate([90]) difference() {
        cylinder(l, d=d,
        $fn=facets, center=true);
        cylinder(l+0.25, d=d-w, 
        $fn=facets, center=true);
    }
}