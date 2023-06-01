use "$hrs/PrelimDataSet_03022023.dta", clear

svyset [pw = rwtresp_ ]

//check cell size

foreach var in age_cat female raracem marriedorprtnrd cogfunction rshlt_ cogfunction rhibpe_ rdiabe_ rcancre_ rhearte_ rlunge_ rstroke_ rpsyche_ rarthre_  hasmedicaid  anylivingkids {
	tab `var' rural, m
}

//Get survey weighted statistics
foreach var in age_cat female raracem marriedorprtnrd cogfunction rshlt_ cogfunction rhibpe_ rdiabe_ rcancre_ rhearte_ rlunge_ rstroke_ rpsyche_ rarthre_  hasmedicaid  anylivingkids {
	svy: tab `var' rural , col  
}

svy: mean sum_adl sum_iadl rconde_ 
svy: mean sum_adl sum_iadl rconde_ , over(rural)
