//Compact Tension Specimen based on ASTM E399 for 3D printable molds
//Developed for MY4777 at Michigan Technological University
//By: David Porter, Brian Haupt, and Dean Johnson
//Under Supervision of Dr. Pearce
//All dimensions parametric based on "t" 

t=20;
w=2*t; //base dimension
plackt=4; 
$fn=100;

module block(){	

difference(){
   translate([.625*w,0,t/4+plackt/2])
	cylinder(r=.675*w,t/2, center=true);
	translate([w,.275*w,0])cylinder(d=.25*w,h=2*w, center=true); 
translate([w+.25*w,-.5*w,-.5*w])cube(size=[w,w,w], center=false);
	translate([w,-.275*w,0])cylinder(d=.25*w,h=2*w, center=true);}

											}

module plack(){
module alignment(){
	translate([42.5,50,0])cylinder(d=5,h=4, center=true);
	translate([-42.5,50,0])cylinder(d=5,h=4, center=true);
	translate([42.5,-50,0])cylinder(d=5,h=4, center=true);
	translate([-42.5,-50,0])cylinder(d=5,h=4, center=true);
	}
difference(){
	cube([100,125,plackt], center=true);
	alignment();	
}}


plack();
translate([0,-20,t/4+plackt/2])
cube([100,8,t/2], center=true);
translate([0,62.5-1.25*w,0])
rotate([0,0,90])
block();
