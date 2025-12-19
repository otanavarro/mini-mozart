//inputs should be height, width??

//for i = 0..height
	//for j = 0..width
		//pass value into rgb_write
display_i_loop_begin	be	display_end	display_i	display_height
		cp	display_j	zero
display_j_loop_begin	be	display_i_loop_end	display_j	display_width
		cp	vga_driver_x	display_j
		cp	vga_driver_y	display_i
		cp	sd_addr		display_arr_count
		call	sd_begin		sd_r_a
		cp	vga_driver_c	sd_read_out
		add	display_arr_count	display_arr_count	one
		call	vga_driver_begin	vga_driver_r_a
display_j_loop_end	add	display_j	display_j	one
		be	display_j_loop_begin	one	one
display_i_loop_end	add	display_i	display_i	one
		be	display_i_loop_begin	one	one
display_end	ret		display_r_a
display_arr_count	0
display_i 	0
display_j	0
display_height  480
display_width   640
display_r_a		0
#include vga_driver.e
#include SD.e