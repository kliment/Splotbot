module grip(){
difference(){union(){
cylinder(r=39/2,h=4);
for(i=[0:2])rotate([0,0,30+360/3*i])translate([0,21])multmatrix([[1,0,0,0],[0,1,0.3,0],[0,0,1,0],[0,0,0,1]])cylinder(r1=5,r2=3,h=20);
}
translate([-10,0,0])rotate([0,40,0])translate([0,0,-3])cylinder(r=1.8,h=50);
}
}
%translate([70,0,0])cylinder(r=39/2,h=13);
%rotate([0,-0,0])translate([70,0,20])mirror([0,0,1])grip();
grip();
