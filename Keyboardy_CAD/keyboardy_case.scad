// Keyboardy case - generated from Keyboardy.kicad_pcb layout
// board outline: x 100.35-190.51, y 75.73-129.04 -> 90.16 x 53.32 mm
board_w = 90.16;
board_h = 53.32;
board_t = 1.6;
wall = 3.0;
wall_t = 2.0;
bottom_t = 2.0;
plate_t = 2.0;
standoff_h = 5.0;

// components (relative to board origin)
switches = [[42.34, 43.79], [61.39, 43.75], [61.45, 24.60], [80.57, 43.75]];
encoder = [73.32, 21.64];
mount = [40.05, 28.34];
usb = [11.79, 17.95];
oled = [51.16, 2.50];

outer_w = board_w + 2*wall;
outer_h = board_h + 2*wall;

module board_pocket(depth) {
    translate([wall - 0.25, wall - 0.25, -0.01])
        cube([board_w + 0.5, board_h + 0.5, depth + 0.02]);
}

module main_body() {
    difference() {
        // tray: floor + walls
        cube([outer_w, outer_h, bottom_t + standoff_h + wall_t]);
        translate([wall_t, wall_t, bottom_t + standoff_h])
            cube([outer_w - 2*wall_t, outer_h - 2*wall_t, wall_t + 1]);
        board_pocket(bottom_t + 1);
        // standoffs for top plate screws
        for (c = [[2.5,2.5],[outer_w-2.5,2.5],[2.5,outer_h-2.5],[outer_w-2.5,outer_h-2.5]]) {
            translate([c[0], c[1], bottom_t]) cylinder(d=6.4, h=standoff_h, $fn=32);
        }
        // pcb mounting standoff
        translate([wall + mount[0], wall + mount[1], bottom_t]) cylinder(d=6.4, h=standoff_h, $fn=32);
    }
}

module top_cover() {
    difference() {
        cube([outer_w, outer_h, plate_t]);
        // MX switch cutouts
        for (s = switches) {
            translate([wall + s[0], wall + s[1], -0.01])
                cube([14.15, 14.15, plate_t + 0.02]);
        }
        // encoder hole
        translate([wall + encoder[0], wall + encoder[1], -0.01])
            cylinder(d=7.2, h=plate_t + 0.02, $fn=48);
        // USB slot
        translate([wall + usb[0] - 4.5, wall + usb[1] - 2.5, -0.01])
            cube([9, 5, plate_t + 0.02]);
        // OLED window
        translate([wall + oled[0] - 13.9, wall + oled[1] - 9.3, -0.01])
            cube([27.8, 18.6, plate_t + 0.02]);
        // screw holes
        for (c = [[2.5,2.5],[outer_w-2.5,2.5],[2.5,outer_h-2.5],[outer_w-2.5,outer_h-2.5]]) {
            translate([c[0], c[1], -0.01]) cylinder(d=3.2, h=plate_t + 0.02, $fn=32);
        }
        translate([wall + mount[0], wall + mount[1], -0.01])
            cylinder(d=3.2, h=plate_t + 0.02, $fn=32);
    }
}

module assembly() {
    main_body();
    translate([0, 0, bottom_t + standoff_h + 0.1]) top_cover();
}

if ($preview) { assembly(); }
else if (render_cover) { top_cover(); }
else { main_body(); }
