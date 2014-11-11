//Compact Tension Specimen based on ASTM E399 for 3D printable molds
//Developed for MY4777 at Michigan Technological University
//By: David Porter, Brian Haupt, and Dean Johnson
//Under Supervision of Dr. Pearce
//All dimensions parametric based on "t" 

t=20;
w=2*t; //base dimension
plackt=4; 

//module plack(){
//module alignment(){
//	translate([42.5,50,0])cylinder(d=5,h=4, center=true);
//	translate([-42.5,50,0])cylinder(d=5,h=4, center=true);
//	translate([42.5,-50,0])cylinder(d=5,h=4, center=true);
//	translate([-42.5,-50,0])cylinder(d=5,h=4, center=true);
//	}
//difference(){
//	cube([100,125,plackt], center=true);
//	alignment();	
//}}



module frame(){
difference(){
translate([-65,-155/2,-5])
cube([130,155,t/2+plackt+5], center=false);

translate([0,0,(plackt+t/2)/2])
cube([100,125,plackt+t/2], center=true);}

translate([0,0,(plackt+t/2)/2])
union(){
	translate([42.5,50,0])cylinder(d=5,h=plackt+t/2, center=true);
	translate([-42.5,50,0])cylinder(d=5,h=plackt+t/2, center=true);
	translate([42.5,-50,0])cylinder(d=5,h=plackt+t/2, center=true);
	translate([-42.5,-50,0])cylinder(d=5,h=plackt+t/2, center=true);
	}}


difference(){
frame();

translate([0,0,(-5+plackt+t/2)/2])
union(){
	translate([56,69,0])cylinder(d=5,h=5+plackt+t/2, center=true);
	translate([-56,69,0])cylinder(d=5,h=5+plackt+t/2, center=true);
	translate([56,-69,0])cylinder(d=5,h=5+plackt+t/2, center=true);
	translate([-56,-69,0])cylinder(d=5,h=5+plackt+t/2, center=true);
   translate([56,0,0])cylinder(d=5,h=5+plackt+t/2, center=true);
	translate([-56,0,0])cylinder(d=5,h=5+plackt+t/2, center=true);
	}}
