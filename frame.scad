use <motorsyringe.scad>
use <carriage.scad>

module beam(len=150){
cube([len,6.5,6.5],center=true);

difference(){
cube([len,10,10],center=true);
rotate([45,0,0])cube([len+1,9,9],center=true);

}
}
width=300;
length=450;


module frame(){
rotate([0,90,0])beam();
translate([width+10,0,0])rotate([0,90,0])beam();
translate([width/2+5,0,-150/2+5])beam(width);
translate([width/2+5,0,150/2-5])beam(width);
translate([0,150/2+5,70])rotate([0,0,90])beam();
translate([0,150/2+5,-70])rotate([0,0,90])beam();
translate([width+10,150/2+5,70])rotate([0,0,90])beam();
translate([width+10,150/2+5,-70])rotate([0,0,90])beam();
translate([0,150,0])rotate([0,90,0])beam();
translate([width+10,150,0])rotate([0,90,0])beam();
translate([width+10,length-150+5,70])rotate([0,0,90])beam(300);
translate([0,length-150+5,70])rotate([0,0,90])beam(300);
translate([width+10,length-150+5,-70])rotate([0,0,90])beam(300);
translate([0,length-150+5,-70])rotate([0,0,90])beam(300);
translate([width/2+5,length+10,-150/2+5])beam(width);
translate([width/2+5,length+10,150/2-5])beam(width);

translate([0,length+10,0])rotate([0,90,0])beam();
translate([width+10,length+10,0])rotate([0,90,0])beam();
}
color("gray")frame();
translate([100,80])color("red")cylinder(r=15,h=90);
translate([250-90,0,0])
translate([20,20,80])carriage();