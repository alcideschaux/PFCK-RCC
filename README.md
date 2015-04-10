## PFCK in RCC
Expression of PDL1/FOXP3/CD8/Ki67 in primary and metastatic renal cell carcinomas.

```r
# Loading the dataset for analysis
source("PFCK_RCC_Tidy.R")
# Loading the simpleR package
library(simpleR)
```

## Methodology
* [__Describing the dataset by patients:__]() In this section we describe the dataset considering each patient as one case. This implies that variables were measured only once per patient. The total number of patients is 112. The variables included in the description are patient's age, patient's sex, patient's race, pT stage, Fuhrman grade, tumor multifocality, tumor surgical margin, tumor size, tumor in other anatomical location, patient's outcome, cancer-related death, tumor progression, and follow-up from surgery.
* __Describing the dataset by TMA spots:__ In this section we describe the dataset considering each TMA spot as one case. This implies that variables were measured multiple times per patient. The total number of TMA spots is 413. The analysis is splitted into the following subsections, each one encompassing evaluation of the expression of PFDL1, FOXP3, CD8 and Ki67.
    + [Expression in nontumor tissue]()
    + [Expression in tumor tissue]()
    + [Comparing nontumor vs. tumor in primary tumors]()
    + [Comparing primary vs. metastatic tumors]()
* __Expression as predictor of tumor progression:__ under evaluation.
    + Association analysis in primary tumors
    + Logistic regression models
* __Expression as predictor of cancer-related death:__ under evaluation.
    + Association analysis in primary tumors
    + Logistic regression models
    + Cox's proportional hazards regression models

### Supporting files
* [Codebook]()
* [Dataset]()
* [R script for tidying data]()
* [R script for cleaning up data]()
* [Figures]()
