module servo(vert=false){
translate([0.25,0,0])cube([23.5,23,12]);
translate([-5,3.75,0])cube([34,2.5,12]);
for(i=[0:25])
	translate([((vert)?-1:0)*i,0,((vert)?0:1)*i]){
		translate([11/2,0.1,6])rotate([90])cylinder(r=11.7/2,h=4.1);
		translate([12,0.1,6])rotate([90])cylinder(r=5.5/2,h=4.1);
}

translate([-6,23-6.1,0])cube([6.3,6.2,12]);
}

module syringe(){
cylinder(r=7.0/2,h=76,$fn=20);
translate([0,0,75.5])cylinder(r1=4.9/2,r2=4/2,h=8.5,$fn=20);
translate([0,0,-10.1])cylinder(r=4.5/2,h=10,$fn=20);
translate([0,0,-20+0.5])cylinder(r=8.5/2,h=20,$fn=20);
scale(1.1)scale([1.9,1,1])cylinder(r=5,h=1,$fn=20);
}
module casing(){
difference(){
translate([-12,-3.9,-5])cube([38,20,20]);
servo();
translate([-7.95/2,0.55,12.95])mirror([0,0,1])syringe();
translate([-7,10,9.01])cylinder(r1=0.75,r2=1.5,h=6,$fn=10);
translate([23.5,-1.9,9.01])cylinder(r1=0.75,r2=1.5,h=6,$fn=10);
translate([0,3,0])cylinder(r=3.5,h=12);
}
}
module casinglid(){
translate([0,30,5])difference(){
casing();
translate([-20,-10,12-.02])cube([50,30,50]);
}

translate([0,0,15])rotate([0,180,0])difference(){
casing();
translate([-20,-10,12-50])cube([50,30,50]);
translate([-7,-4,12])cube([8,3,3]);
}
}
module syringecage(){
mirror([0,0,1])translate([0,0,-5])difference(){
translate([-10,-5,0])cube([15,10,5]);
translate([-7,-7,2])rotate([0,90,90])cylinder(r=0.75,h=30);
translate([0,0,-73.7])syringe();
}
}
*for(i=[0:1])for(j=[0:2])translate([25*i,15*j])syringecage();
casinglid();
translate([28,10,0])syringecage();

%cube([200,200,0.01],true);