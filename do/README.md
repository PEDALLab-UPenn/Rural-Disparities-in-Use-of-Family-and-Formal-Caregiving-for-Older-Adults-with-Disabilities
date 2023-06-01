**README file for posted estimation files**

**"Rural Disparities in Use of Family and Formal Caregiving for Older Adults with Disabilities"**

by Katherine E. M. Miller, Katherine Ornstein, and Norma B. Coe

**Overview:**

Before running the code:

- Change the file path of the data and output global statements at the beginning of each .do file to the location of the project folder

Once these changes have been made, running the file labeled "0\_Primary File" will construct the analytic data set and produce all output values to replicate findings as reported in the manuscript.

For questions about the code, please contact Katherine Miller (Katherine.miller@pennmedicine.upenn.edu).

**Data required:**

First, HRS Restricted Geographic data permissions will be required. Second, the sample constructed for the paper "Informal and Formal Home Care For Older Adults With Disabilities Increased, 2004–16" by Van Houtven et al. (2020) will be required.

**Running the code:**

This code is for Stata, and has been verified to run in version 16. The table1 package is required to produce the table.

**Description of files:**

The following describes how the files correspond to the inputs and output:

| File | Description | Inputs/Outputs | Notes |
| --- | --- | --- | --- |
| 0. Primary File | Runs all .do files and produces all output | | Only edit the global statements |
| 1. Prepare Rand Family File R.do | | Inputs: RAND longitudinal File: randhrs1992\_2018v1.dta Output:Additional\_Respondent\_Characterstics 03022023.dta | |
| 2. Prepare Cognitive Function file.do | | Inputs: cogfinalimp\_9518wide.dta Output:cogfinalimp\_1416long.dta | |
| 3. Merge Datasets.do | | Inputs: public\_finallong.sas7bdat (from prior paper referenced in data required above), Additional\_Respondent\_Characterstics 03022023.dta, cogfinalimp\_1416long.dta, hrsxgeo18v8b\_r.dta Output:Complete Dataset.dta | |
| 4. Create Analytic File forGitHub.do | | Inputs: Complete Dataset.dta Output:PrelimDataSet\_03022023.dta | |
| 5. Analysis R&R forGitHub.do | | Inputs: PrelimDataSet\_03022023.dta Output: Output for Figures 1 and 2 | |
| 6. NursingHomeDwellers.do | | Inputs: RAND longitudinal File: randhrs1992\_2018v1.dta Output:NH\_CHaracteristics 03022023.dta and Table 1\_Nursing Home Counts.csv | |
| 7. Create Table1 Descriptive Statistics.do | | Inputs: PrelimDataSet\_03022023.dta Output: Appendix Table 1 Descriptive Statistics | |
