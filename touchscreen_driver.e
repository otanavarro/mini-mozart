touchscreen_driver_begin        cp  0x800000e0	one         // writes 1 to cmd
                                //device executes command and sets response parameters
                                //Wait for response to be 1 (means its done executing) Loop when response 0 to 1

touchscreen_driver_wait1	bne	touchscreen_driver_ret	0x800000e1	one    



 

    //	Copy everything
 
            cp	press_status	0x800000e4 // read touch_pressed to press_status
	        cp	x_status	0x800000e2// read touch_x to x_status
	        cp	y_status	0x800000e3// read touch_y to y_status
            cp	0x800000e0	zero  //Then you set command to 0

touchscreen_driver_wait2	bne touchscreen_driver_wait2	 0x800000e1	zero    
touchscreen_driver_ret     ret 	touchscreen_driver_r_a

press_status 0
x_status 0
y_status 0
touchscreen_driver_r_a  0