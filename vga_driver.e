//given an x, y, and a color, write to vga
vga_driver_begin	    cp    0x80000062    one
            cp    0x80000063    vga_driver_x
            cp    0x80000064    vga_driver_y
            cp    0x80000065    vga_driver_x
            cp    0x80000066    vga_driver_y
            cp    0x80000067    vga_driver_c
            cp    0x80000060	one 
vga_driver_wait        be    vga_driver_wait         0x80000061      zero
            cp    0x80000060	zero 
vga_driver_wait2	    be    vga_driver_wait2		0x80000061     one
            ret   vga_driver_r_a
vga_driver_r_a	    0

vga_driver_x	0
vga_driver_y	0
vga_driver_c	0