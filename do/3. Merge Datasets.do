import sas using "$hrs\public_finallong.sas7bdat", clear
egen hhidpn = concat(HHID PN)
	
	merge 1:1 hhidpn year using "$hrs\Additional_Respondent_Characterstics 03022023.dta"
		keep if _merge == 3
		drop _merge
		
	merge 1:1 hhidpn year using "$hrs\cogfinalimp_1416long.dta"
		keep if _merge == 3
		drop _merge
		
	tab year
	
	sort hhid pn year
	merge 1:1 hhid pn year using  "$locdata/hrsxgeo18v8b_r.dta", force
		keep if _merge == 3
		drop _merge 
	tab urbrur2003, m
	
save "$hrs\Complete Dataset.dta", replace

