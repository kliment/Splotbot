use <motorsyringe.scad>

module nest3(){
difference(){
cube([80,30,20]);

for(i=[0:2])
translate([3+i*28,0]){
translate([-.02,-3-.02,30])rotate([0,90,0])servo(true);
translate([17,6,-0.01])cylinder(r=3.8,h=50);
}
}
}
module lm8uu(l=150){
cylinder(r=8,h=25);
cylinder(r=6,h=l,center=true,$fn=6);

}


module carriage(){
difference(){
union(){nest3();
translate([25,25])cube([35,15,22]);
translate([0,65])mirror([0,1,0])nest3();
}
translate([84,44,8.02])mirror([1,1,0])servo(true);
translate([30,32.5,2])rotate([0,90,0])lm8uu();
translate([30,32.5,25])rotate([0,90,0])lm8uu();
translate([34,22,-0.1])cylinder(r=2,h=30);
translate([34,43,-0.1])cylinder(r=2,h=30);
translate([50,22,-0.1])cylinder(r=2,h=30);
translate([50,43,-0.1])cylinder(r=2,h=30);

}
}
module t25cutout(l=35){
{cube([l,0.7,10]);
for(i=[1:l/2.5])
	translate([2.5*i,0.7-0.01,0])cube([2.8/2,1.2,10]);
}
}

module beltholder(){
mirror([0,0,01])
difference(){
translate([27.5,20.5,-20])cube([30,24,20]);
translate([30,32.5,2])rotate([0,90,0])lm8uu();
#translate([34,22,-28.1])cylinder(r=2,h=30);
#translate([34,43,-28.1])cylinder(r=2,h=30);	
#translate([50,22,-28.1])cylinder(r=2,h=30);
#translate([50,43,-28.1])cylinder(r=2,h=30);
translate([24.5,30,-21])t25cutout();
}
}
*carriage();
*beltholder();
%cube([200,200,0.01],true);

