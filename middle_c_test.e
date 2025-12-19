//Time interval between samples is 125


//period time = 125 * # of samples

//hz = 1/period time

//hz = 1/(000125 * # of samples )

//hz = 8000/# of samples

//# of samples = 8000/hz


loop            cpfa    speaker_sample_input    middle_c_begin  index
                add     index   index       one
                call    speaker_driver_begin speaker_driver_r_a
                bne     loop_end   speaker_sample_input    middle_c_end           
                cp      index       zero
loop_end        be      loop    one     one

middle_c_begin  0
                201000000
                394000000
                571000000
                725000000
                849000000
                938000000
                988000000
                999000000
                968000000
                898000000
                791000000
                651000000
                485000000
                101000000
                -101000000
                -299000000
                -485000000
                -651000000
                -791000000
                -898000000
                -968000000
                -999000000
                -988000000
                -938000000
                -849000000
                -725000000
                -571000000
                -394000000
middle_c_end    -201000000

index           0  
#include speaker_driver.e
#include constants.e
