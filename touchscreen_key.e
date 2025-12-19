						call	display_i_loop_begin	display_r_a
touchscreen_loop		call	touchscreen_driver_begin	touchscreen_driver_r_a
						call	calculate_key	key_r_a
						cp 		0x80000003	key
						call	keytosoundstart keytosound_ra 
						be touchscreen_loop one one
						halt


// 240-360 black keys
// if y > 360
	//int key = x_status/40;
	
// else the key doesnt change

// white keys are 1 - 16
// black keys 17-27

calculate_key		cp		key		NoKeyID
					be		calculate_key_end	press_status	zero
					blt		calculate_key_end	y_status		twoforty
					div		key	x_status	forty 
					blt 	calculate_key_end	threesixty		y_status	
					call	black_key_checker	black_key_r_a
calculate_key_end	ret		key_r_a

//We need to know touched region is in the y region with black keys to call this function.
black_key_checker	blt  d_sharp1	x_status	twentythree
		blt	d_sharp1	sixtytwo	x_status
		cp	key	CSharpOneID

d_sharp1	blt  f_sharp1	x_status	sixtytwo
		blt	f_sharp1		ninetyeight 	x_status
		cp	key	DSharpOneID

f_sharp1	blt  g_sharp1	x_status	onefortythree
		blt	g_sharp1		oneeightytwo	x_status
		cp	key	FSharpOneID

g_sharp1	blt  a_sharp1	x_status	oneeightytwo
		blt	a_sharp1		twotwentytwo	x_status
		cp	key	GSharpOneID		

a_sharp1	blt  c_sharp2	x_status	twotwentytwo
		blt	c_sharp2		twofiftyeight	x_status
		cp	key	ASharpOneID
	
c_sharp2	blt  d_sharp2	x_status	threezerothree
		blt	d_sharp2		threefortytwo	x_status
		cp	key	CSharpTwoID

d_sharp2	blt  f_sharp2	x_status	threefortytwo
		blt	f_sharp2		threeseventyseven	x_status
		cp	key	DSharpTwoID	

f_sharp2	blt  g_sharp2	x_status	fourtwentytwo
		blt	g_sharp2		foursixtytwo	x_status
		cp	key	FSharpTwoID

g_sharp2	blt  a_sharp2	x_status	foursixtytwo
		blt	a_sharp2		fivezerotwo	x_status
		cp	key	GSharpTwoID

a_sharp2	blt  c_sharp3   x_status	fivezerotwo
		blt c_sharp3   	fivethirtyseven	x_status
		cp	key	ASharpTwoID

c_sharp3	blt 	black_key_end	x_status	fivethirtyseven
			blt	black_key_end		sixeighteen		x_status
		cp	key	CSharpThreeID

black_key_end	ret	black_key_r_a	

key_r_a		0
black_key_r_a	0
key	27


#include display.e
#include touchscreen_driver.e
#include constants.e
#include keytosound.e



	

