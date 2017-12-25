// An ornament holder
// Use the code:
// use </path/to/lib/Holder.scad>
// to use this module

module holder(l=1, d=1, w=0.25) {
    // l=length, d=diameter, w=width
    // length is the length of the cylinder on the x axis
    // diameter is the size of the circle
    // width is width of solid holder part
    facets = 90;
    rotate([90]) difference() {
        cylinder(l, d=d,
        $fn=facets, center=true);
        cylinder(l+0.25, d=d-w, 
        $fn=facets, center=true);
    }
}

// Sample code
cube(10, center=true);
// translate it up so it is half in the cube
translate([0, 0, 5])
holder(1, 2);