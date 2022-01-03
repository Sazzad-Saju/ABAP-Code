" prog07 - Marge three columns with fixed string 
" into single column of an internal table

types : begin of TY_EMPLOYEE,
         Id type i,
         Name type string,
         Department type string,
         Email type string,
        end of TY_EMPLOYEE.
    
data : IT_EMPLOYEE type table of TY_EMPLOYEE,
        wa_employee type TY_EMPLOYEE.
        
IT_EMPLOYEE = VALUE #( ( Id = 1 Name = 'Saiful' Department = 'Dev' Email = '')
                ( Id = 2 Name = 'Sakib' Department = 'QA' Email = '' ) 
                ( Id = 3 Name = 'Hanif' Department = 'HR' Email = '' ) ).            
                
select * from IT_EMPLOYEE
    into corresponding fields of wa_employee.
    wa_employee-Email = wa_employee-Name && '_' && wa_employee-Department && '_' && wa_employee-Id && '@email.com'.
    append wa_employee to IT_EMPLOYEE.
                
loop at IT_EMPLOYEE into wa_employee. 
    write: / wa_employee-Id, wa_employee-Name, wa_employee-Department, wa_employee-Email.
endloop.