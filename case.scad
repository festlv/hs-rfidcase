include <config.hcad>

module case() {

    //bottom wall
    cube([PI_SIZE_X + WT*2, PI_SIZE_Y+WT*2, WT]);
    
    //side walls
    translate([0, 0, WT]) {
        translate([0, 0, 0])
            cube([PI_SIZE_X + WT*2, WT, CASE_HEIGHT]);

        translate([0, PI_SIZE_Y + WT , 0])
            cube([PI_SIZE_X + WT*2, WT, CASE_HEIGHT]);

        translate([0, WT, 0])
            cube([WT, PI_SIZE_Y , CASE_HEIGHT]);
        translate([PI_SIZE_X + WT, WT, 0])
            cube([WT, PI_SIZE_Y , CASE_HEIGHT]);


    }


}

SDCARD_POS = [12, -1, WT];

module sdcard() {
    cube([26, 20, 5]);
}

USB_ETHER_POS = [WT + PI_SIZE_X - 40, PI_SIZE_Y+0.2, WT + 2];
module usb_ethernet() {
    cube([40, WT * 2, 25]);
}

HDMI_POS = [WT + PI_SIZE_X-0.1, 31, WT+2];
module hdmi() {
    cube([WT*2, 18, 8]);
}

module case_all() {
    difference() {
        case();
        translate(SDCARD_POS)
            sdcard();

        translate(USB_ETHER_POS)
            usb_ethernet();

        translate(HDMI_POS)
            hdmi();
    }
}

case_all();
