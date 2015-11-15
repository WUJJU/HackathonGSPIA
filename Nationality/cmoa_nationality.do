local j=_N
append using "C:\Users\Ziqiao\Documents\CMOA\cmoa_nationality.dta"
generate nat_new = ""
local k=_N
forvalues i=`j'(1)`k' {
	replace nat_new = Country[`i'] if nationality == nat_code[`i']
}
drop in `j'/`k'
