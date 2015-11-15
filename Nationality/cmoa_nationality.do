append using "C:\Users\Ziqiao\Documents\CMOA\cmoa_nationality.dta"
generate nat_new = ""
forvalues i=14511(1)14733 {
	replace nat_new = Country[`i'] if nationality == nat_code[`i']
}
drop in 14511/14733
