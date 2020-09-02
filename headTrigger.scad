// offset.scad - Example for offset() usage in OpenSCAD

$fn = 100;

foot_height = 40;

//echo(version=version());


difference(){
    union(){
        linear_extrude(height = foot_height) {
            circle(16.3);
        }
        translate([0, 0, 57]){ 
            sphere(r = 31);
        }
        translate([19, 13, 35]){ 
            linear_extrude(height = foot_height) {
                circle(r = 7);
            }
        }
        translate([19, -13, 35]){ 
            linear_extrude(height = foot_height) {
                circle(r = 7);
            }
        }
        translate([-19, 13, 35]){ 
            linear_extrude(height = foot_height) {
                circle(r = 7);
            }
        }
        translate([-19, -13, 35]){ 
            linear_extrude(height = foot_height) {
                circle(r = 7);
            }
        }
        translate([0, 0, 5]){ 
            sphere(r = 17);
        }
        translate([0, 0, 20]){ 
            sphere(r = 17);
        }
        translate([0, 0, 38]){ 
            sphere(r = 19);
        }
        translate([10, -9, 0]){ 
            cube([17,18,25]);
        }
    }
    
    // 半球裁切
    translate([0, 0, 88]) cube(70, center = true);
    // 半球裁切
    translate([0, 0, -30]) cube(60, center = true);
    
    
    translate([0, 60, 68]) cube(70, center = true);
    translate([0, -60, 68]) cube(70, center = true);

    // 头管空位裁切
    translate([0, 0, -3])
    linear_extrude(height = foot_height-3) {
        circle(14.3);
    }
    
    // 把立盖螺丝孔
    linear_extrude(height = 100) {
        circle(3);
    }
    // 减重裁切
    translate([0, 0, foot_height -3])
    linear_extrude(height = foot_height-3) {
        circle(19);
    }
    translate([32, 0, foot_height- 5])
    linear_extrude(height = foot_height-3) {
        circle(10);
    }
    translate([-32, 0, foot_height- 5])
    linear_extrude(height = foot_height-3) {
        circle(10);
    }
    // 车把空位裁切
    translate([0, 50, 59]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 100) {
                circle(15.9);
            }
        }
    }
    // 缝隙裁切
    translate([14, -1.1, -0.5])
    cube([20, 2.2, 32]);
    
    // 下侧螺丝孔
    translate([20, 0, 7]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 10) {
                circle(2.75);
            }
        }
    }
    translate([20, 0, 19]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 10) {
                circle(2.75);
            }
        }
    }
    
    translate([20, -6, 7]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 10) {
                circle(4.2);
            }
        }
    }
    translate([20, -6, 19]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 10) {
                circle(4.2);
            }
        }
    }
    
    translate([20, 10, 7]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 10) {
                circle(2.24);
            }
        }
    }
    translate([20, 10, 19]){ 
        rotate([90, 0, 0]){
            linear_extrude(height = 10) {
                circle(2.24);
            }
        }
    }
    
    // 上侧螺丝孔
    translate([20, 13.75, 30]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    translate([20, -13.75, 30]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    translate([-20, 13.75, 30]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
    translate([-20, -13.75, 30]){ 
        linear_extrude(height = 30) {
            circle(2.24);
        }
    }
}
