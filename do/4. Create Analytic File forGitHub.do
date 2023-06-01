use "$hrs/Complete Dataset.dta", clear	
	drop HHID PN 
	
	rename * , lower
	
	//Create Indicators of Rurality
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
	
	gen rural = 0 
		replace rural = 1 if rucc_code == 1 | rucc_code == 2
		//For missing rural values, we used FORHC eligible zip codes
	
	//Create Indicators for Types of Care
	gen typeofcare = 1 if table1_v2 == "NO CARE2"
		replace typeofcare = 2 if table1_v2 == "IC_ONLY2"
		replace typeofcare = 3 if table1_v2 == "FHC2_ONLY"
		replace typeofcare = 4 if table1_v2 == "BOTH2"
		label define types 1 "No care" 2 "IC only" 3 "FC only" 4 "Both"
		label values typeofcare types 
	
	drop both
	gen both = 0
			replace both = 1 if table1_v2 == "BOTH2"
		label var both "Both Care"
	gen fc_only = 0
		replace fc_only = 1 if table1_v2 == "FHC2_ONLY"
		label var fc_only "Formal Care Only"
	drop ic_only
	gen ic_only = 0
		replace ic_only = 1 if table1_v2 == "IC_ONLY2"
		label var ic_only "Family Care Only"
	gen nocare = 0
		replace nocare = 1 if table1_v2 == "NO CARE2"
		label var nocare "No Care"
		
	// Create Indicator of Any Expected Nursing Home Use in Next 5 Years
	gen anynursinghome = 0 if rpnhm5y == 0
		replace anynursinghome = 1 if rpnhm5y > 0 & rpnhm5y < .
	
	//Age Cat
	tab age_cat, m
	label define agescat 4 "Ages 65-69" 5 "Ages 70-74" 6 "Ages 75-79" 7 "Ages 80-84" 8 "Ages 85+"
	label values age_cat agescat
	
	//Sex
	tab ragender, m
	gen female = 0
	replace female = 1 if ragender == 2
	
	//Race 
	tab raracem race, m 
	label define rce 0 "Missing" 1 "White" 2 "Black" 3 "Other"
	label values race rce
	
	//Married/Partner
	gen marriedorprtnrd = 0 if rmstat_ < .
		replace marriedorprtnrd = 1 if rmstat == 1 | rmstat == 3
	label var marriedorprtnrd "Married with Present Spouse/Partnered"
	
	//Check ADLs
	tab sum_adl , m
	
	//Check IADLs
	tab sum_iadl , m 
	
	//Check Self Reported Health
	tab rshlt_ , m 
	label var rshlt_ "Self-reported Health"
	label define srh 1 "Excellent" 2 "Very Good" 3 "Good" 4 "Fair" 5 "Poor"
	label values rshlt_ srh

	//Check number of doctor diagnosed  conditions
	tab rconde_ , m 
	
	//Cognitive function
	tab cogfunction , m  
	label define cogfun 1 "Normal" 2 "CIND" 3 "Dementia"
	label values cogfunction cogfun
	
	//Check Reported Diagnoses
	tab1 rhibpe_ rdiabe_ rcancre_ rhearte_ rlunge_ rstroke_ rpsyche_ rarthre_ , m
	
	//Any Living Kids	
	gen anylivingkids = 0 if hchild == 0
	replace anylivingkids = 1 if hchild > 0 & hchild < .
	label var anylivingkids "Any living children"
	
	//Medicaid Enrollee
	gen hasmedicaid = 0
		replace hasmedicaid = 1 if rgovmd == 1
	
	//Census Division
	tab rcendiv	, m 
	
	//State Indicators
	destring stfips10, gen (state)
	
	//Create Analytic Sample
	qui reg typeofcare rural i.age_cat i.female i.raracem i.marriedorprtnrd c.sum_adl c.sum_iadl c.rshlt_ c.rconde_ i.cogfunction i.rhibpe_ i.rdiabe_ i.rcancre_ i.rhearte_ i.rlunge_ i.rstroke_ i.rpsyche_ i.rarthre_ i.hasmedicaid i.rcendiv i.anylivingkids
		gen analyticsample = 1 if e(sample) == 1
		keep if analyticsample == 1
	
save "$hrs/PrelimDataSet_03022023.dta", replace
