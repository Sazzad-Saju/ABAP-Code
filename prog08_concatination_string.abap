" output saju_cse_49@@email.com

data name type string value 'saju'.
data dept type string value 'cse'.
data email type string value ''.
data id type i value 49.
concatenate name dept
into email separated by '_'.
email = name && '_' && dept && '_' && id && '@email.com'.
write email.