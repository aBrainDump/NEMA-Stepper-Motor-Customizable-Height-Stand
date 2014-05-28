//  NEMA Stepper Motor Customizable Height Stand
//
//  I only had a 40mm stepper but needed a 48mm
//  for the Z axis on a reprap Wilson TS.  With 
//  the 40mm it was unstable until I printed this
//  stand.  Problem solved.
//  
//  I printed in PLA .3 layer height, .2 fill
//
//  aBrainDump.com
//
//
// specify the motor size and the height in mm you 
// would like to add.  I had a 40mm and needed a 48mm.
// I entered 8mm for the height
//

// Stand height
base_height_in_mm = 8;

// Choose the stepper motor
width_in_mm = 42; //[35.2:NEMA14, 42:NEMA17, 57:NEMA23]

// Top edge height
edge_height_in_mm = 3;



difference(){
//outer shell
translate([0,0,(base_height_in_mm+edge_height_in_mm)/2])
cube([width_in_mm+2.2,width_in_mm+2.2,edge_height_in_mm+base_height_in_mm], center = true);

//inside edge
translate([0,0,base_height_in_mm+edge_height_in_mm-1])
cube([width_in_mm+.2,width_in_mm+.2,edge_height_in_mm], center = true);

// center hole to reduce material
translate([0,0,0])
cube([width_in_mm*.86,width_in_mm*.86,50+base_height_in_mm], center = true);

// notch for wiring harness height_in_mm+(edge_height_in_mm/2
translate([width_in_mm/2,0,4+(base_height_in_mm+edge_height_in_mm/2)])
cube([width_in_mm*.4,width_in_mm*.4,10], center = true);
}


