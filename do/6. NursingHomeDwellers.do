use hhid pn hhidpn r7wtr_nh-r13wtr_nh using "$hrs\randhrs1992_2018v1.dta", clear
	
	rename r7wtr_nh rwtr_nh_7
	rename r8wtr_nh rwtr_nh_8
	rename r9wtr_nh rwtr_nh_9
	rename r10wtr_nh rwtr_nh_10
	rename r11wtr_nh rwtr_nh_11
	rename r12wtr_nh rwtr_nh_12
	rename r13wtr_nh rwtr_nh_13
	
	reshape long rwtr_nh_ , i(hhidpn) j(wave)
	
	tab wave, m
		
	gen year = 2004 if wave == 7
	replace year = 2006 if wave == 8
	replace year = 2008 if wave == 9
	replace year = 2010 if wave == 10
	replace year = 2012 if wave == 11
	replace year = 2014 if wave == 12
	replace year = 2016 if wave == 13
	replace year = 2018 if wave == 14
	
	gen str9 hold = string(hhidpn, "%09.0f")
	
	rename hhidpn hhidpn_num
	rename hold hhidpn

	merge 1:1 hhid pn year using  "$locdata/hrsxgeo18v8b_r.dta", force
		keep if _merge == 3
		drop _merge 
		
	gen rucc_code = 0 if urbrur2003 < 4 & year < 2013
		replace rucc_code = 1 if urbrur2003 >3 & urbrur2003 < 7 & year < 2013
		replace rucc_code = 2 if urbrur2003 >6 & urbrur2003 < 10 & year < 2013
		replace rucc_code = . if urbrur2003 == . & year < 2013
		replace rucc_code = 0 if urbrur2013 < 4 & year > 2012
		replace rucc_code = 1 if urbrur2013 >3 & urbrur2013 < 7 & year > 2012
		replace rucc_code = 2 if urbrur2013 >6 & urbrur2013 < 10 & year > 2012
		replace rucc_code = . if urbrur2013 == . & year > 2012
	
		label define rrl 0 "Metro" 1 "Non-Metro/Adjacent" 2 "Non-Metro/Not Adjacent" , replace
		label var rucc_code "RUCC 2003"
		label values rucc_code rrl
	
	gen rural = 0 if rucc_code == 0
		replace rural = 1 if rucc_code == 1 | rucc_code == 2
	
	svyset hhidpn [pw=rwtr_nh_] ,  vce(linearized)

//EXHIBIT 1 CONTRIBUTIONS

	estpost svy: tab  rural year , col count 
	esttab e(count) using "$tables\Table 1_Nursing Home Counts.csv" , replace
	
save "$hrs\NH_CHaracteristics 03022023.dta", replace
