gen creationyear = year(date(creation_date_earliest, "MDY"))
gen yearacquired=year(date(date_acquired, "MDY"))
gen ageatcreation = creationyear - birth_year
gen yeartoacq = yearacquired - creationyear

reg yeartoacq ageatcreation if horoscopeid==9
gen makesnosense = ageatcreation<0 | ageatcreation >110

tab missingageatcreation makesnosense

gen monkey = horoscopeid==9
gen rooster = horoscopeid ==10
gen dep_code = real(department)
gen nat_code = real(nationality)

encode department, generate(dep_code)
encode nationality, generate(nat_code)

reg yeartoacq yearacquired monkey rooster

reg yeartoacq yearacquired monkey rooster i.dep_code i.nat_code
gsort horoscopeid department
encode medium, generate(med)
reg yeartoacq yearacquired monkey rooster i.med if onview==1
encode horoscope, generate(hor)
reg yeartoacq yearacquired  i.hor i.med if onview==1
graph twoway (scatter yeartoacq yearacquired ,  msize(small)) (lfit yeartoacq yearacquired) 
reg yeartoacq hor i.med if onview==1
