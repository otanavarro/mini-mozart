speaker_driver_begin    cp      0x80000042  speaker_sample_input
                        cp  0x80000040  one
speaker_driver_wait1    bne    speaker_driver_wait1     0x80000041  one
                        cp     0x80000040   zero
speaker_driver_wait2    bne    speaker_driver_wait2     0x80000041  zero
                        ret     speaker_driver_r_a



speaker_sample_input    0
speaker_driver_r_a      0
