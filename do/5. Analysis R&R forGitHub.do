use "$hrs/PrelimDataSet_03022023.dta", clear

xtset hhidpn_num year
xtdescribe //Sample Size: N=6678 unique respondents

global x "i.age_cat i.female i.raracem i.marriedorprtnrd c.sum_adl c.sum_iadl i.rshlt_ c.rconde_ i.cogfunction i.rhibpe_ i.rdiabe_ i.rcancre_ i.rhearte_ i.rlunge_ i.rstroke_ i.rpsyche_ i.rarthre_  i.hasmedicaid i.rcendiv i.anylivingkids"
global x2 "i.age_cat i.female i.raracem i.marriedorprtnrd c.sum_adl c.sum_iadl i.rshlt_ c.rconde_ i.cogfunction i.rhibpe_ i.rdiabe_ i.rcancre_ i.rhearte_ i.rlunge_ i.rstroke_ i.rpsyche_ i.rarthre_ i.hasmedicaid i.state i.anylivingkids"

svyset [pw = rwtresp_ ]

pwcorr age_cat marriedorprtnrd female race sum_adl sum_iadl rshlt_ rhibpe_ rdiabe_ rcancre_ rlunge_ rstroke_ rpsyche_ rarthre_ rconde_ cogfunction anylivingkids hasmedicaid

//Table 1
	svy: logit both i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) ) post
			est sto both_natl
	svy: logit fc_only i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) ) post
			est sto fconly_natl
	svy: logit ic_only i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) ) post
			est sto iconly_natl
	svy: logit nocare i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) ) post
			est sto nocare_natl

	svy: logit both i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) rural = (0 1)) post
			est sto both
	svy: logit fc_only i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) rural = (0 1)) post
			est sto fconly
	svy: logit ic_only i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) rural = (0 1)) post
			est sto iconly
	svy: logit nocare i.rural##i.year ($x)
		margins, at(year = (2004(2)2016) rural = (0 1)) post
			est sto nocare

esttab both_natl fconly_natl iconly_natl nocare_natl both fconly iconly nocare using "$tables\Table 1 03062023.rtf", b() ci(%9.3f) nostar onecell stats(N) legend label replace compress
			
//Figure 1	
	svy: logit any_ic_num i.rural##i.year ($x)
		margins, dydx(rural) post
			est sto anyic_dydx
			
	svy: logit any_fhc2_num i.rural##i.year ($x)
		margins, dydx(rural) post
			est sto anyfc_dydx
	
	svy: logit both i.rural##i.year ($x)
		margins, dydx(rural) post
			est sto both_dydx
			
	svy: logit fc_only i.rural##i.year ($x)
		margins, dydx(rural) post
			est sto fconly_dydx
			
	svy: logit ic_only i.rural##i.year ($x)
		margins, dydx(rural) post
			est sto iconly_dydx
			
	svy: logit nocare i.rural##i.year ($x)
		margins, dydx(rural) post
			est sto none_dydx
		
	svy: logit anynursinghome i.rural##i.year $x if any_ic == "YES"
		margins, dydx(rural) post
			est sto anynrsnghme_dydx
	
	svy: poisson rpnhm5y i.rural##i.year $x if any_ic == "YES"
		margins, dydx(rural) post
			est sto probnrsnghme_dydx
		
esttab anyic_dydx anyfc_dydx both_dydx fconly_dydx iconly_dydx none_dydx anynrsnghme_dydx probnrsnghme_dydx  using "$tables\Figure 1 03062023.csv", b(%9.3f) p stats(N) legend label replace compress
	
	svy: logit any_ic_num i.rural##i.year ($x)
		margins, at(rural = (0 1)) post
			est sto anyic_dydx
			
	svy: logit any_fhc2_num i.rural##i.year ($x)
		margins, at(rural = (0 1)) post
			est sto anyfc_dydx
	
	svy: logit both i.rural##i.year ($x)
		margins, at(rural = (0 1)) post
			est sto both_dydx
			
	svy: logit fc_only i.rural##i.year ($x)
		margins, at(rural = (0 1)) post
			est sto fconly_dydx
			
	svy: logit ic_only i.rural##i.year ($x)
		margins, at(rural = (0 1)) post
			est sto iconly_dydx
			
	svy: logit nocare i.rural##i.year ($x)
		margins, at(rural = (0 1)) post
			est sto none_dydx
		
esttab anyic_dydx anyfc_dydx both_dydx fconly_dydx iconly_dydx none_dydx  using "$tables\Figure 1_PredictedProb 03062023.rtf", b() ci(%9.3f) nostar onecell stats(N) legend label replace compress

//Figure 2.

	svy: logit anynursinghome i.rural##i.year $x if any_ic == "YES"
		margins, at(rural = (0 1)) post
			est sto anynrsnghme_pp
	
	svy: poisson rpnhm5y i.rural##i.year $x if any_ic == "YES"
		margins, at(rural = (0 1)) post
			est sto probnrsnghme_pp
		
esttab anynrsnghme_pp probnrsnghme_pp using "$tables\Figure 2 03062023.rtf", b() ci(%9.3f) nostar onecell stats(N) legend label replace compress

 
