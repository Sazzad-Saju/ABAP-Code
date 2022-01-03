# ABAP-Code

---
Prog07: Marge Two Column
---
<b> Only ABAP programming language is allowed for this problem.</b> <br>
Assume that you have below employee data in an ABAP internal table. The name of the internal table is IT_EMPLOYEE. <br>

| ID    | Name        | Department | Email         |
| :---  |      :---:  |      :---: |          ---: |
| 1     | Saiful      | Dev        |               |
| 2     | Sakib       | QA         |               |
| 3     | Hanif       | HR         |               |

But employee email address was not assigned in the table. Your task is to generate email address for each employee by using the given format: <b> name_department_id@email.com </b> <br>
<b>Example:</b> For employee id 1, the email address should look like <b>Saiful_Dev_1@email.com.</b><br>
After assigning all email addresses, you need to print all the fields of IT_EMPLOYEE internal table in the screen.<br>
<b>Final Output:</b>

| ID    | Name        | Department | Email                  |
| :---  |      :---:  |      :---: |                   ---: |
| 1     | Saiful      | Dev        | Saiful_Dev_1@email.com |
| 2     | Sakib       | QA         | Sakib_QA_2@email.com   |
| 3     | Hanif       | HR         | Hanif_HR_3@email.com   |

> NB: this solve haven't yet tested. Check out for errors :(
