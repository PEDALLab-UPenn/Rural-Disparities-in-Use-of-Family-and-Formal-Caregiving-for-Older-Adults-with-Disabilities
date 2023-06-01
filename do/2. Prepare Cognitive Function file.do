use "$hrs\cogfinalimp_9518wide.dta" 
tab cogfunction2018
tab cogfunction2018, m
tab cogfunction2018, sum ( prxyscore_imp2018 )
keep hhid pn cogfunction*
egen hhidpn = concat(hhid pn)
reshape long cogfunction , i(hhid pn hhidpn) j(year)
tab year
keep if year >= 2004 & year <= 2016
save "$hrs\cogfinalimp_1416long.dta", replace

