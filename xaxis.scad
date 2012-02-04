module nema14(){
cube([36,36,40],true);
translate([0,0,1])cylinder(r=12,h=42,center=true);
translate([0,0,1])cylinder(r=3,h=38);
translate([13,13,1])cylinder(r=1.8,h=38);
translate([13,-13,1])cylinder(r=1.8,h=38);
translate([-13,13,1])cylinder(r=1.8,h=38);
translate([-13,-13,1])cylinder(r=1.8,h=38);

}

module shaftholder(){
difference(){
union(){cube([40,10,3]);
translate([12.5,0])cube([15,10,30]);
translate([20,10.25,20+13])rotate([90,0,0])cylinder(r=10,h=10.5,$fn=12);

}
translate([4,5,-0.1])cylinder(r=2,h=10);
translate([35,5,-0.1])cylinder(r=2,h=10);
translate([5,5,26+13])rotate([0,90,0])cylinder(r=2,h=30);
translate([20,10.5,20+13])rotate([90,0,0])cylinder(r=4.7,h=11,$fn=6);
translate([18.5,-2.1,20+13])rotate([0,0,0])cube([3,13,30]);

}
}
module ishaftholder(){
difference(){
union(){cube([40,10,3]);
translate([12.5,0])cube([15,10,30]);
translate([20,10.25,20+13])rotate([90,0,0])cylinder(r=10,h=10.5,$fn=12);

}
translate([5,5,19.5])rotate([0,90,0])cylinder(r=2.3,h=30);
translate([4,5,-0.1])cylinder(r=2,h=10);
translate([35,5,-0.1])cylinder(r=2,h=10);
translate([5,5,26+13])rotate([0,90,0])cylinder(r=2,h=30);
translate([20,10.5,20+13])rotate([90,0,0])cylinder(r=4.7,h=11,$fn=6);
translate([18.5,-2.1,20+13])rotate([0,0,0])cube([3,13,30]);

}
}


module mshaftholder(){
difference(){
union(){translate([0,-35.02])cube([40,45,3]);
translate([12.5,0])cube([15,10,30]);
#translate([24,-35,0])cube([6,45.01,36]);
translate([20,10.25,20+13])rotate([90,0,0])cylinder(r=10,h=10.5,$fn=12);

}
translate([4,5,-0.1])cylinder(r=2,h=10);
translate([35,5,-0.1])cylinder(r=2,h=10);
translate([5,5,26+13])rotate([0,90,0])cylinder(r=2,h=30);
translate([20,10.5,20+13])rotate([90,0,0])cylinder(r=4.7,h=11,$fn=6);
translate([18.5,-2.1,20+13])rotate([0,0,0])cube([3,13,30]);
#translate([5,-17.9,19.5])rotate([0,90,0])nema14();

}
}


mshaftholder();
translate([0,30,0])ishaftholder();
translate([30,15,0])shaftholder();
translate([30,45,0])shaftholder();

%cube([200,200,0.01],true);