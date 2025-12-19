keytosoundstart   cp      index       zero
                  cp       timesplayed zero
            be  loop0   key   COneID  
            be  loop1   key   DOneID      
            be  loop2   key   EOneID  
            be  loop3   key   FOneID  
            be  loop4   key   GOneID  
            be  loop5   key   AOneID  
            be  loop6   key   BOneID  
            be  loop7   key   CTwoID  // CTwoID      7
            be  loop8   key   DTwoID  
            be  loop9   key   ETwoID  
            be  loop10   key   FTwoID  
            be  loop11   key   GTwoID  
            be  loop12   key   ATwoID  
            be  loop13   key   BTwoID  
            be  loop14   key   CThreeID  
            be  loop15   key   DThreeID  
            be  loop16   key   CSharpOneID  
            be  loop17  key   DSharpOneID  
            be  loop18   key   FSharpOneID  
            be  loop19   key   GSharpOneID  
            be  loop20  key   ASharpOneID  
            be  loop21  key   CSharpTwoID  
            be  loop22  key   DSharpTwoID  
            be  loop23  key   FSharpTwoID  
            be  loop24  key   GSharpTwoID  
            be  loop25  key   ASharpTwoID  
            be  loop26  key   CSharpThreeID  
            be  noKey  key   NoKeyID  

    
   

loop0       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID0  index // key 0 = C 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop0_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop0_end   be      loop0    one     one

loop1       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID1  index // key 1 = D 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop1_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop1_end   be      loop1    one     one
            
loop2       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID2  index // key 2 = E 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop2_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop2_end   be      loop2    one     one
            
loop3       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID3  index // key 3 = F 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop3_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop3_end   be      loop3    one     one

loop4       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID4  index // key 4 = G 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop4_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop4_end   be      loop4    one     one

loop5       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID5  index // key 5 = A 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop5_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop5_end   be      loop5    one     one
            
loop6       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID6  index // key 6 = B 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop6_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop6_end   be      loop6    one     one

loop7       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID7  index // key 7 = C 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop7_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop7_end   be      loop7    one     one
   
loop8       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID8  index // key 8 = D 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop8_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop8_end   be      loop8    one     one

loop9       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID9  index // key 9 = E 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop9_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop9_end   be      loop9    one     one

loop10       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID10  index // key 10 = F 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop10_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop10_end   be      loop10    one     one
   
loop11       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID11  index // key 11 = G 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop11_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop11_end   be      loop11    one     one

loop12       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID12  index // key 12 = A 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop12_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop12_end   be      loop12    one     one

loop13       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID13  index // key 13 = B 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop13_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop13_end   be      loop13    one     one

loop14       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID14  index // key 14 = C 3
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop14_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop14_end   be      loop14    one     one
   
loop15       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID15  index // key 15 = D 3
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop15_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop15_end   be      loop15    one     one

loop16       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID16  index // key 16 = CSharp 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop16_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop16_end   be      loop16    one     one

loop17       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID17  index // key 17 = DSharp 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop17_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop17_end   be      loop17    one     one


            
loop18       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID18  index // key 18 = FSharp 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop18_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop18_end   be      loop18    one     one

loop19       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID19  index // key 19 = GSharp 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop19_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop19_end   be      loop19    one     one
   
loop20       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID20  index // key 20 = ASharp 1
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop20_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop20_end   be      loop20    one     one

loop21       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID21  index // key 21 = CSharp 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop21_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop21_end   be      loop21    one     one

loop22       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID22 index // key 22 =  DSharp 2 
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop22_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop22_end   be      loop22    one     one
   
loop23       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID23  index // key 23 = FSharp 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop23_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop23_end   be      loop23    one     one

loop24       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID24  index // key 24 = GSharp 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop24_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop24_end   be      loop24    one     one

loop25       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID25  index // key 25 = ASharp 2
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop25_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop25_end   be      loop25    one     one

loop26       be      keytosoundret   timesplayed    two
            cpfa    speaker_sample_input    NoteID26  index // key 26 = CSharp 3
            add     index   index       one
            call    speaker_driver_begin speaker_driver_r_a
            bne     loop26_end   speaker_sample_input    zero    
            add      timesplayed    timesplayed    one 
            cp       index       zero
loop26_end   be      loop26    one     one
   
noKey       be    keytosoundret     one   one

keytosoundret     ret   keytosound_ra

timesplayed 0
index  0 
keytosound_ra   0
    

#include frequencies.e
#include speaker_driver.e


 // make sure plays nothing for key 27


