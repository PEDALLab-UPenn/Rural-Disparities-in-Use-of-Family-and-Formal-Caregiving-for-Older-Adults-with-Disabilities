clear
set seed 111617

global hrs "Data"
global locdata "R:\Restricted\Geographic Information\xyrDet\stata"
global logfls "Log Files"
global tables "Tables"
global dofiles "Do Files

log using "$logfls\Dataset Construction FINAL.log", replace
do "$dofiles\1. Prepare Rand Family File R.do"
do "$dofiles\2. Prepare Cognitive Function File.do"
do "$dofiles\3. Merge Datasets.do"
do "$dofiles\4. Create Analytic File.do"
log close

log using "$logfls\Analysis FINAL.log" , replace
do "$dofiles\5. Analysis R&R.do"
log close


log using "$logfls\NursingHomeDwellers FINAL.log" , replace
do "$dofiles\6. NursingHomeDwellers.do"
log close

log using "$logfls\Table 1 for Appendix FINAL.log" , replace //Create Table for Appendix
do "$dofiles\7. Create Table 1 Descriptive Statistics.do"
log close
