" prog06 - Join two tables: 
" matnr, matkl from table mara
" spras, maktx from table makt 

types : begin of ty_mara,
         matnr type matnr,
         matkl type matkl,
         spras type spras,
         maktx type maktx,
        end of ty_mara.
    
data : it_mara type table of ty_mara,
        wa_mara type ty_mara.
        
parameters: p_matnr type matnr,
            p_spras type spras.
            
select mara~matnr mara~matkl makt~spras makt~maktx
    from mara as mara inner Join makt as makt
    on mara~matnr = makt~matnr
    into table it_mara
    where mara~matnr = p_matnr
    and   makt~spras = p_spras.
    
loop at it_mara into wa_mara.
    write: / wa_mara-matnr, wa_mara-matkl, wa_mara-spras, wa_mara-maktx.
endloop. 
