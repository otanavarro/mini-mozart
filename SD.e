sd_begin       cp    0x80000082    zero	  
            cp    0x80000083    sd_addr
	    cp    0x80000080 	one
sd_wait        be    sd_wait         0x80000081      zero
            cp    sd_read_out      0x80000085
            cp    0x80000080	zero 
sd_wait2	    be    sd_wait2		0x80000081     one

            ret   sd_r_a
sd_addr        0
sd_read_out    0
sd_r_a	    0
