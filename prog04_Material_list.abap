" prog 04: Material List



tables mara. 

parameters: p_ernam type mara-ernam.

'

select * from mara where ernam = p_ernam.

    write: / mara-matnr, mara-ersda, mara-ernam.


endselect.