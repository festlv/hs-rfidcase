include <config.hcad>

cube([PI_SIZE_X + WT*2, PI_SIZE_Y + WT*2, WT]);

translate([WT + CLEARANCE/2, WT + CLEARANCE / 2, WT])
    cube([PI_SIZE_X - CLEARANCE, PI_SIZE_Y - CLEARANCE, WT]);
