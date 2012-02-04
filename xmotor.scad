use <carriage.scad>
use <xaxis.scad>
module xbase(){
rh=10;
rb=12;
difference(){
translate([3,0])cube([35,40,40]);
for(i=[1:2*rb])
translate([20,33,i/2])rotate([90,90,0])lm8uu();
translate([-9,30,rb-8.5])rotate([0,90,0])cylinder(r=1.8,h=50);
translate([-9,11,rb-8.5])rotate([0,90,0])cylinder(r=1.8,h=50);
translate([33,20,rh+25])rotate([90,90,0])cylinder(r=2.3,h=50);
translate([33,20,rh])rotate([90,90,0])cylinder(r=2.3,h=50);
translate([20,20,rh])rotate([0,90,0])cylinder(r=4.3,fn=30,h=250);
translate([15,20,rh+25])rotate([0,90,0])cylinder(r=4.3,fn=30,h=250);
translate([27,10,rh+25-6.5/2])cube([12,3,6.5]);
translate([27,10,rh-6.5/2])cube([12,3,6.5]);
}
}

module idler(){
difference(){
xbase();
translate([8,6+20,-1])cylinder(r=2.4,h=35);
translate([-0.1+2,2.5+20,15])cube([12,7,4]);
}
}
module motor(){
difference(){
union(){
xbase();
translate([-36,0,0])cube([40,40,40]);
}
translate([-15,15,24])mirror([0,0,1])nema14();
#translate([-66,-1,31])rotate([0,45,0])cube([41,42,57]);

}
}

translate([-15,-12.5,0])carriage();
translate([-20,-60])motor();
translate([0,-65])beltholder();
translate([-60,0])idler();
*translate([40,0,0])cube(10);
%cube([200,200,0.01],true); 