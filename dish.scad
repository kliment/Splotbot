module dishtrap(){
difference(){
translate([0,-3,5])cube([42,48,10],true);
translate([0,0,-0.03])cylinder(r1=37/2+0.5,r2=39/2+0.5,h=6);
translate([0,0,6-0.06])cylinder(r=39/2+0.5,h=6);
translate([18.5,-17,-0.5])cylinder(r=1.5,h=11,$fn=12);
translate([18.5,-24.5,-0.5])cylinder(r=1.5,h=11,$fn=12);
translate([28,28,5])rotate([0,0,45])cube(30,true);
translate([-27,-27,5])rotate([0,0,45])cube([30,50,30],true);
translate([-32,38,5])rotate([0,0,45])cube([30,50,30],true);
}
}
module magnetholder(){
difference(){
translate([0,-1,0])cube([10,8,10]);
translate([-0.1,3-3.5/2,0.6])cube([3.5,3.5,3.5]);
translate([10-3.4,3-3.5/2,0.6])cube([3.5,3.5,3.5]);
#translate([5,3,5])rotate([30,0,0])cylinder(r=2,h=20,center=true);
}
}
dishtrap();
magnetholder();
*translate([16,-15.75,15])rotate([0,0,-90])magnetholder();
%cube([200,200,0.01],true);
