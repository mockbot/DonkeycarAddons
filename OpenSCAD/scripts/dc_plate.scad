
dc_len=195;
dc_width=95;
dc_height=5;
rounding=10;


module donkeycarplate(){
    $fn=50;
    minkowski()
    {
        cube([dc_len-(2*rounding),dc_width-(2*rounding),dc_height]);
        cylinder(r=rounding,h=dc_height/4);
    }
}

module hole(x,y){
    hole_radius=1.6;
    translate([x,y,-1]) cylinder(h=3*dc_height,r=hole_radius);
}

difference(){
donkeycarplate();
        for (i=[0.1*rounding:10:dc_len-(2*rounding)]){
            hole(i,dc_width/2-rounding);
        }
};
