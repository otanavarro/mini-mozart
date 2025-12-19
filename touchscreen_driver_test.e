while	be label one one

label	call	func_read_event	func_ra

	bne	func_change_press_status	func_ra		press
label2	blt	func_change_hex_x	old_x	x_status
label3	blt	func_change_hex_y	old_y	y_status
	be while one one
	halt



func_change_press_status	cp  press  press_status       
	be label2 	zero	zero
func_change_hex_x	cp  old_x  x_status     
	//hexdigit 
	cp	0x80000003	old_x
	be label3 zero	zero

func_change_hex_y	cp  old_y  y_status     
	//hexdigit 
	cp	0x80000004	old_y
	be	while	one	one
	




old_x	0
old_y	0
press	0


#include driver.e

