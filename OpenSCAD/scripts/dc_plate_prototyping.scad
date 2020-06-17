
dc_len=200;
dc_width=100;
dc_height=5;
rounding=10;
scale=10;

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
    for (j=[-dc_width/2-rounding/2:dc_width/scale:dc_width/2-rounding/2]){
        for (i=[0.05*rounding:dc_len/scale/2:dc_len-(1.5*rounding)]){
            hole(i,(dc_width/2-rounding)+j);
        }
    }
};
