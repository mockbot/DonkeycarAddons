l=40;
b=10;
h=25;


d=b;
r=d/2;

module body(){
    translate([0,-r/2,0]) cube([l,b,h]);
}

module _left_stand(){
    difference(){
        translate([0,r/2,0]) cylinder(r=r,h=h);
        translate([0,r/2,5]) cylinder(r=r/2,h=h*2);
    }
}

module left_stand(){
        translate([0,r/2,0]) cylinder(r=r,h=h);
}

module _right_stand(){
    difference(){
        translate([l,r/2,0]) cylinder(r=r,h=h);
        translate([l,r/2,5]) cylinder(r=r/2,h=h*2);
    }
}

module right_stand(){
        translate([l,r/2,0]) cylinder(r=r,h=h);
}

module make_stand(){
    difference(){
        body();
        translate([0,r/2,5]) cylinder(r=r/2,h=h*2);
        translate([l,r/2,5]) cylinder(r=r/2,h=h*2);
    }
    difference(){
        left_stand();
        translate([0,r/2,5]) cylinder(r=r/2,h=h*2);
    }
    difference(){
        right_stand();
        translate([l,r/2,5]) cylinder(r=r/2,h=h*2);
    }
    difference(){
        rotate([90,0,0]) {
            translate([0,b/3,0]) cube([l,b/2,h*3]);
        }
        translate([l/4,-b*2,0]) cylinder(r=r/2,h=h);
        translate([l-l/4,-b*2,0]) cylinder(r=r/2,h=h);
        
        translate([l/4,-b*4,0]) cylinder(r=r/2,h=h);
        translate([l-l/4,-b*4,0]) cylinder(r=r/2,h=h);
        
        translate([l/4,-b*6,0]) cylinder(r=r/2,h=h);
        translate([l-l/4,-b*6,0]) cylinder(r=r/2,h=h);
    }
}

make_stand();

    
    