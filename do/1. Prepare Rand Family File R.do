use hhidpn h1child h2child h3child h4child h5child h6child h7child h8child h9child h10child h11child h12child h13child  r1govmd r2govmd r3govmd r4govmd r5govmd r6govmd r7govmd r8govmd r9govmd r10govmd r11govmd r12govmd r13govmd h6povfam h7povfam h8povfam h9povfam h10povfam h11povfam h12povfam h13povfam h6inpovr h7inpovr h8inpovr h9inpovr h10inpovr h11inpovr h12inpovr h13inpovr r4pnhm5y r5pnhm5y r6pnhm5y r7pnhm5y r8pnhm5y r9pnhm5y r10pnhm5y r11pnhm5y r12pnhm5y r13pnhm5y r7shlt-r13shlt r7hltc-r13hltc r7hosp-r13hosp r7nrshom-r13nrshom r7hsptim-r13hsptim r7hspnit-r13hspnit  r7nrstim-r13nrstim  r7doctor-r13doctor r7doctim-r13doctim r7drugs-r13drugs r7outpt-r13outpt  r7hibpe-r13hibpe r7diabe-r13diabe r7cancre-r13cancre r7lunge-r13lunge r7stroke-r13stroke r7psyche-r13psyche r7arthre-r13arthre r7conde-r13conde r7shltc-r13shltc r7nhmliv r8nhmliv r9nhmliv r10nhmliv r11nhmliv r12nhmliv r13nhmliv r13nhmliv r7wtcrnh-r13wtcrnh r7wtresp-r13wtresp ragender raracem r7mstat-r13mstat r7hearte-r13hearte r7cendiv-r13cendiv using "$hrs\randhrs1992_2018v1.dta", clear
	
	rename r7cendiv rcendiv_7
	rename r8cendiv rcendiv_8
	rename r9cendiv rcendiv_9
	rename r10cendiv rcendiv_10
	rename r11cendiv rcendiv_11
	rename r12cendiv rcendiv_12
	rename r13cendiv rcendiv_13
	rename r7hearte rhearte_7
	rename r8hearte rhearte_8
	rename r9hearte rhearte_9
	rename r10hearte rhearte_10
	rename r11hearte rhearte_11
	rename r12hearte rhearte_12
	rename r13hearte rhearte_13
	rename r7mstat rmstat_7
	rename r8mstat rmstat_8
	rename r9mstat rmstat_9
	rename r10mstat rmstat_10
	rename r11mstat rmstat_11
	rename r12mstat rmstat_12
	rename r13mstat rmstat_13
	rename r7wtresp rwtresp_7
	rename r8wtresp rwtresp_8
	rename r9wtresp rwtresp_9
	rename r10wtresp rwtresp_10
	rename r11wtresp rwtresp_11
	rename r12wtresp rwtresp_12
	rename r13wtresp rwtresp_13
	rename r7wtcrnh rwtcrnh_7
	rename r8wtcrnh rwtcrnh_8
	rename r9wtcrnh rwtcrnh_9
	rename r10wtcrnh rwtcrnh_10
	rename r11wtcrnh rwtcrnh_11
	rename r12wtcrnh rwtcrnh_12
	rename r13wtcrnh rwtcrnh_13
	rename r7nhmliv rnhmliv_7
	rename r8nhmliv rnhmliv_8
	rename r9nhmliv rnhmliv_9
	rename r10nhmliv rnhmliv_10
	rename r11nhmliv rnhmliv_11
	rename r12nhmliv rnhmliv_12
	rename r13nhmliv rnhmliv_13
	rename h1child hchild_1
	rename h2child hchild_2
	rename h3child hchild_3
	rename h4child hchild_4
	rename h5child hchild_5
	rename h6child hchild_6
	rename h7child hchild_7
	rename h8child hchild_8
	rename h9child hchild_9
	rename h10child hchild_10
	rename h11child hchild_11
	rename h12child hchild_12
	rename h13child hchild_13
	rename r1govmd rgovmd_1
	rename r2govmd rgovmd_2
	rename r3govmd rgovmd_3
	rename r4govmd rgovmd_4
	rename r5govmd rgovmd_5
	rename r6govmd rgovmd_6
	rename r7govmd rgovmd_7
	rename r8govmd rgovmd_8
	rename r9govmd rgovmd_9
	rename r10govmd rgovmd_10
	rename r11govmd rgovmd_11
	rename r12govmd rgovmd_12
	rename r13govmd rgovmd_13
	rename h6povfam hpovfam_6
	rename h7povfam hpovfam_7
	rename h8povfam hpovfam_8
	rename h9povfam hpovfam_9
	rename h10povfam hpovfam_10
	rename h11povfam hpovfam_11
	rename h12povfam hpovfam_12
	rename h13povfam hpovfam_13
	rename h6inpovr hinpovr_6
	rename h7inpovr hinpovr_7
	rename h8inpovr hinpovr_8
	rename h9inpovr hinpovr_9
	rename h10inpovr hinpovr_10
	rename h11inpovr hinpovr_11
	rename h12inpovr hinpovr_12
	rename h13inpovr hinpovr_13
	rename r4pnhm5y rpnhm5y_4
	rename r5pnhm5y rpnhm5y_5
	rename r6pnhm5y rpnhm5y_6
	rename r7pnhm5y rpnhm5y_7
	rename r8pnhm5y rpnhm5y_8
	rename r9pnhm5y rpnhm5y_9
	rename r10pnhm5y rpnhm5y_10
	rename r11pnhm5y rpnhm5y_11
	rename r12pnhm5y rpnhm5y_12
	rename r13pnhm5y rpnhm5y_13
	rename r7shlt rshlt_7
	rename r8shlt rshlt_8
	rename r9shlt rshlt_9
	rename r10shlt rshlt_10
	rename r11shlt rshlt_11
	rename r12shlt rshlt_12
	rename r13shlt rshlt_13
	rename r7hltc rhltc_7
	rename r8hltc rhltc_8
	rename r9hltc rhltc_9
	rename r10hltc rhltc_10
	rename r11hltc rhltc_11
	rename r12hltc rhltc_12
	rename r13hltc rhltc_13
	rename r7hosp rhosp_7
	rename r8hosp rhosp_8
	rename r9hosp rhosp_9
	rename r10hosp rhosp_10
	rename r11hosp rhosp_11
	rename r12hosp rhosp_12
	rename r13hosp rhosp_13
	rename r7nrshom rnrshom_7
	rename r8nrshom rnrshom_8
	rename r9nrshom rnrshom_9
	rename r10nrshom rnrshom_10
	rename r11nrshom rnrshom_11
	rename r12nrshom rnrshom_12
	rename r13nrshom rnrshom_13
	rename r7hsptim rhsptim_7
	rename r8hsptim rhsptim_8
	rename r9hsptim rhsptim_9
	rename r10hsptim rhsptim_10
	rename r11hsptim rhsptim_11
	rename r12hsptim rhsptim_12
	rename r13hsptim rhsptim_13
	rename r7hspnit rhspnit_7
	rename r8hspnit rhspnit_8
	rename r9hspnit rhspnit_9
	rename r10hspnit rhspnit_10
	rename r11hspnit rhspnit_11
	rename r12hspnit rhspnit_12
	rename r13hspnit rhspnit_13
	rename  r7nrstim rnrstim_7
	rename  r8nrstim rnrstim_8
	rename  r9nrstim rnrstim_9
	rename  r10nrstim rnrstim_10
	rename  r11nrstim rnrstim_11
	rename  r12nrstim rnrstim_12
	rename  r13nrstim rnrstim_13
	rename  r7doctor rdoctor_7
	rename  r8doctor rdoctor_8
	rename  r9doctor rdoctor_9
	rename  r10doctor rdoctor_10
	rename  r11doctor rdoctor_11
	rename  r12doctor rdoctor_12
	rename  r13doctor rdoctor_13
	rename  r7doctim rdoctim_7
	rename  r8doctim rdoctim_8
	rename  r9doctim rdoctim_9
	rename  r10doctim rdoctim_10
	rename  r11doctim rdoctim_11
	rename  r12doctim rdoctim_12
	rename  r13doctim rdoctim_13
	rename r7drugs rdrugs_7
	rename r8drugs rdrugs_8
	rename r9drugs rdrugs_9
	rename r10drugs rdrugs_10
	rename r11drugs rdrugs_11
	rename r12drugs rdrugs_12
	rename r13drugs rdrugs_13
	rename r7outpt routpt_7
	rename r8outpt routpt_8
	rename r9outpt routpt_9
	rename r10outpt routpt_10
	rename r11outpt routpt_11
	rename r12outpt routpt_12
	rename r13outpt routpt_13
	rename r7hibpe rhibpe_7
	rename r8hibpe rhibpe_8
	rename r9hibpe rhibpe_9
	rename r10hibpe rhibpe_10
	rename r11hibpe rhibpe_11
	rename r12hibpe rhibpe_12
	rename r13hibpe rhibpe_13
	rename r7diabe rdiabe_7	
	rename r8diabe rdiabe_8
	rename r9diabe rdiabe_9
	rename r10diabe rdiabe_10
	rename r11diabe rdiabe_11
	rename r12diabe rdiabe_12
	rename r13diabe rdiabe_13
	rename r7cancre rcancre_7
	rename r8cancre rcancre_8
	rename r9cancre rcancre_9
	rename r10cancre rcancre_10
	rename r11cancre rcancre_11
	rename r12cancre rcancre_12
	rename r13cancre rcancre_13
	rename r7lunge rlunge_7
	rename r8lunge rlunge_8
	rename r9lunge rlunge_9
	rename r10lunge rlunge_10
	rename r11lunge rlunge_11
	rename r12lunge rlunge_12
	rename r13lunge rlunge_13
	rename r7stroke rstroke_7
	rename r8stroke rstroke_8
	rename r9stroke rstroke_9
	rename r10stroke rstroke_10
	rename r11stroke rstroke_11
	rename r12stroke rstroke_12
	rename r13stroke rstroke_13
	rename r7psyche rpsyche_7
	rename r8psyche rpsyche_8
	rename r9psyche rpsyche_9
	rename r10psyche rpsyche_10
	rename r11psyche rpsyche_11
	rename r12psyche rpsyche_12
	rename r13psyche rpsyche_13
	rename r7arthre rarthre_7
	rename r8arthre rarthre_8
	rename r9arthre rarthre_9
	rename r10arthre rarthre_10
	rename r11arthre rarthre_11
	rename r12arthre rarthre_12
	rename r13arthre rarthre_13
	rename r7conde rconde_7
	rename r8conde rconde_8
	rename r9conde rconde_9
	rename r10conde rconde_10
	rename r11conde rconde_11
	rename r12conde rconde_12
	rename r13conde rconde_13
	rename r7shltc rshltc_7
	rename r8shltc rshltc_8
	rename r9shltc rshltc_9
	rename r10shltc rshltc_10
	rename r11shltc rshltc_11
	rename r12shltc rshltc_12
	rename r13shltc rshltc_13
	
	drop r*dentst r*homcar r*nhmday  r*nhmmvm r*nhmmvy r*nrsnit r*spcfac
	 	
	reshape long rshlt_ rshltc_ rhltc_ rhibpe_ rdiabe_ rcancre_ rlunge_ rstroke_ rpsyche_ rarthre_ rconde_ rhosp_ rnrshom_ rdoctor_ routpt_ rdrugs_ rhsptim_ rnrstim_ rhspnit_ rdoctim_ hpovfam_ hinpovr_ rgovmd_ rpnhm5y_ hchild_ rnhmliv_ rwtcrnh_ rwtresp_ rmstat_ rhearte_ rcendiv_, i(hhidpn) j(wave)
	
	tab wave, m
	
	keep if wave > 6 & wave < 14
	
	gen year = 2004 if wave == 7
	replace year = 2006 if wave == 8
	replace year = 2008 if wave == 9
	replace year = 2010 if wave == 10
	replace year = 2012 if wave == 11
	replace year = 2014 if wave == 12
	replace year = 2016 if wave == 13
	
	gen str9 hold = string(hhidpn, "%09.0f")
	
	rename hhidpn hhidpn_num
	rename hold hhidpn
	
save "$hrs\Additional_Respondent_Characterstics 03022023.dta", replace