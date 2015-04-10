---
output: pdf_document
---
## Codebook
This document contains the codebook for the "PFCK in ccRCC" study, describing the variables included in the full dataset. The number in brackets indicate the column number in the dataset, followed by the column (variable) name in quotation marks.

#### [1] "ID"
- **Description:** Identification number
- **Type:** Integer
- **Units/Levels:** NA

#### [2] "SP"
- **Description:** Surgical Pathology ID
- **Type:** Factor
- **Units/Levels:** NA

#### [3] "TMA"
- **Description:** Tissue Microarray ID
- **Type:** Factor
- **Units/Levels:** "604/605" "609"

#### [4] "Diagnosis"
- **Description:** Renal cell carcinoma subtype
- **Type:** Factor
- **Units/Levels:** "ccRCC"

#### [5] "pT"
- **Description:** pT stage
- **Type:** Factor
- **Units/Levels:** "T1a" "T1b" "T2b" "T3a" "T3b" "T2a"

#### [6] "Fuhrman"
- **Description:** Fuhrman grade
- **Type:** Factor
- **Units/Levels:** "G1" "G2" "G3" "G4"

#### [7] "Multifocal"
- **Description:** Multifocal tumor
- **Type:** Factor
- **Units/Levels:** "No" "Yes"

#### [8] "Margin"
- **Description:** Surgical margins of the tumor
- **Type:** Factor
- **Units/Levels:** "Negative" "Positive"

#### [9] "Size"
- **Description:** Tumor size
- **Type:** Numeric
- **Units/Levels:** cm 

#### [10] "Age"
- **Description:** Patient's age
- **Type:** Integer
- **Units/Levels:** Years

#### [11] "Sex"
- **Description:** Patient's sex
- **Type:** Factor
- **Units/Levels:** "Female" "Male"

#### [12] "Race"
- **Description:** Patient's race
- **Type:** Factor
- **Units/Levels:** "Asian" "Black" "Other" "White"

#### [13] "Other_Tumor"
- **Description:** Tumor in other anatomical location
- **Type:** Factor
- **Units/Levels:** "No" "Other" "Prostate"

#### [14] "Outcome"
- **Description:** Patient's outcome
- **Type:** Factor
- **Units/Levels:** "Alive" "Dead"

#### [15] "DOD"
- **Description:** Died of disease (cancer-related death)
- **Type:** Factor
- **Units/Levels:** "No"  "Yes"

#### [16] "Progression"
- **Description:** Tumor progression
- **Type:** Factor
- **Units/Levels:** "No" "Yes"

#### [17] "FU"
- **Description:** Patient's follow-up
- **Type:** Integer
- **Units/Levels:** Months

#### [18] "PDL1_Nontumor_Percentage"
- **Description:** Percentage of PDL1+ nontumor cells
- **Type:** Integer
- **Units/Levels:** % 

#### [19] "PDL1_Nontumor_Location"
- **Description:** Location of PDL1 positiviy in nontumor cell structure
- **Type:** Factor
- **Units/Levels:** "Cytoplasmic" "Membraneous"

#### [20] "PDL1_Nontumor_H0"
- **Description:** Percentage of PDL1- nontumor cells
- **Type:** Integer
- **Units/Levels:** % 

#### [21] "PDLI_Nontumor_H1"
- **Description:** Percentage of nontumor cells with weak PDL1+
- **Type:** Integer
- **Units/Levels:** % 

#### [22] "PDL1_Nontumor_H2"
- **Description:** Percentage of nontumor cells with moderate PDL1+
- **Type:** Integer
- **Units/Levels:** % 

#### [23] "PDL1_Nontumor_H3"
- **Description:** Percentage of nontumor cells with strong PDL1+
- **Type:** Integer
- **Units/Levels:** % 

#### [24] "PDL1_Nontumor_H"
- **Description:** H-score of PDL1 expression in nontumor cells
- **Type:** Integer
- **Units/Levels:** Points 

#### [25] "PDL1_Nontumor_Stroma_Percentage"
- **Description:** Percentage of PDL1+ inflammatory cells in stroma of nontumor tissue
- **Type:** Integer
- **Units/Levels:** % 

#### [26] "Host_Response_Nontumor"
- **Description:** Total host response in nontumor tissue and stroma
- **Type:** Factor
- **Units/Levels:** "Absent" "Weak" "Moderate" "Strong"

#### [27] "FOXP3_Nontumor_Lymphocytes"
- **Description:** Number of FOXP3+ lymphocytes in nontumor tissue, per high-power field, in the most crowded area
- **Type:** Integer
- **Units/Levels:** Count

#### [28] "FOXP3_Nontumor_Stroma_Lymphocytes"
- **Description:** Number of FOXP3+ lymphocytes in stroma of nontumor tissue, per high-power field
- **Type:** Integer
- **Units/Levels:** Count

#### [29] "FOXP3_Nontumor_Lymphocytes_Intensity"
- **Description:** Intensity of FOXP3 staining in lymphocytes in nontumor tissue
- **Type:** Factor
- **Units/Levels:** "Moderate Staining" "No Staining" "Strong Staining" "Weak Staining"  

#### [30] "FOXP3_Nontumor"
- **Description:** Number of FOXP3+ nontumor cells, per high-power field, in the most positive area
- **Type:** Integer
- **Units/Levels:** Count 

#### [31] "FOXP3_Nontumor_Intensity"
- **Description:** Intensity of FOXP3 staining in nontumor cells
- **Type:** Factor
- **Units/Levels:** "No Staining"

#### [32] "FOXP3_Nontumor_Percentage"
- **Description:** Percentage of FOXP3+ nontumor cells
- **Type:** Integer
- **Units/Levels:** Count

#### [33] "CD8_Nontumor"
- **Description:** Number of CD8+ in nontumor tissue, per high-power field, in the most intensively inflammed area
- **Type:** Integer
- **Units/Levels:** Count

#### [34] "CD8_Ki67_Nontumor"
- **Description:** Number of CD8+/Ki67+ lymphocytes in nontumor tissue, per high-power field, in the most intensively inflammed area
- **Type:** Integer
- **Units/Levels:** Count

#### [35] "CD8_Nontumor_Stroma"
- **Description:** Number of CD8+ in stroma of nontumor tissue, per high-power field, in the most crowded area
- **Type:** Integer
- **Units/Levels:** Count

#### [36] "CD8_Ki67_Nontumor_Stroma"
- **Description:** Number of CD8+/Ki67+ in stroma of nontumor tissue, per high-power field, in the most crowded area
- **Type:** Integer
- **Units/Levels:** Count

#### [37] "Ki67_Nontumor_Percentage"
- **Description:** Percentage of Ki67+ nontumor cells
- **Type:** Integer
- **Units/Levels:** Count

#### [38] "PDL1_Tumor_Percentage"
- **Description:** Percentage of PDL1+ tumor cells
- **Type:** Integer
- **Units/Levels:** % 

#### [39] "PDL1_Tumor_Location"
- **Description:** Location of PDL1 positiviy in tumor cell structure
- **Type:** Factor
- **Units/Levels:** "Cytoplasmic" "Membraneous"

#### [40] "PDL1_Tumor_H0"
- **Description:** Percentage of PDL1- tumor cells
- **Type:** Integer
- **Units/Levels:** % 

#### [41] "PDLI_Tumor_H1"
- **Description:** Percentage of tumor cells with weak PDL1+
- **Type:** Integer
- **Units/Levels:** % 

#### [42] "PDL1_Tumor_H2"
- **Description:** Percentage of tumor cells with moderate PDL1+
- **Type:** Integer
- **Units/Levels:** % 

#### [43] "PDL1_Tumor_H3"
- **Description:** Percentage of tumor cells with strong PDL1+
- **Type:** Integer
- **Units/Levels:** % 

#### [44] "PDL1_Tumor_H"
- **Description:** H-score of PDL1 expression in tumor cells
- **Type:** Integer
- **Units/Levels:** Points 

#### [45] "PDL1_Tumor_Stroma_Percentage"
- **Description:** Percentage of PDL1+ inflammatory cells in stroma of tumor tissue
- **Type:** Integer
- **Units/Levels:** % 

#### [46] "Host_Response_Tumor"
- **Description:** Total host response in tumor tissue and stroma
- **Type:** Factor
- **Units/Levels:** "Absent" "Weak" "Moderate" "Strong"

#### [47] "FOXP3_Tumor_Lymphocytes"
- **Description:** Number of FOXP3+ lymphocytes in tumor tissue, per high-power field, in the most crowded area
- **Type:** Integer
- **Units/Levels:** Count

#### [48] "FOXP3_Tumor_Stroma_Lymphocytes"
- **Description:** Number of FOXP3+ lymphocytes in stroma of tumor tissue, per high-power field
- **Type:** Integer
- **Units/Levels:** Count

#### [49] "FOXP3_Tumor_Lymphocytes_Intensity"
- **Description:** Intensity of FOXP3 staining in lymphocytes in tumor tissue
- **Type:** Factor
- **Units/Levels:** "Moderate Staining" "No Staining" "Strong Staining" "Weak Staining"

#### [50] "FOXP3_Tumor"
- **Description:** Number of FOXP3+ tumor cells, per high-power field, in the most positive area
- **Type:** Integer
- **Units/Levels:** Count 

#### [51] "FOXP3_Tumor_Intensity"
- **Description:** Intensity of FOXP3 staining in tumor cells
- **Type:** Factor
- **Units/Levels:** "No Staining"

#### [52] "FOXP3_Tumor_Percentage"
- **Description:** Percentage of FOXP3+ tumor cells
- **Type:** Integer
- **Units/Levels:** Count

#### [53] "CD8_Tumor"
- **Description:** Number of CD8+ in tumor tissue, per high-power field, in the most intensively inflammed area
- **Type:** Integer
- **Units/Levels:** Count

#### [54] "CD8_Ki67_Tumor"
- **Description:** Number of CD8+/Ki67+ lymphocytes in tumor tissue, per high-power field, in the most intensively inflammed area
- **Type:** Integer
- **Units/Levels:** Count

#### [55] "CD8_Tumor_Stroma"
- **Description:** Number of CD8+ in stroma of tumor tissue, per high-power field, in the most crowded area
- **Type:** Integer
- **Units/Levels:** Count

#### [56] "CD8_Ki67_Tumor_Stroma"
- **Description:** Number of CD8+/Ki67+ in stroma of tumor tissue, per high-power field, in the most crowded area
- **Type:** Integer
- **Units/Levels:** Count

#### [57] "Ki67_Tumor_Percentage"
- **Description:** Percentage of Ki67+ tumor cells
- **Type:** Integer
- **Units/Levels:** Count

#### [58] "Tissue"
- **Description:** Origin of tumor tissue
- **Type:** Factor
- **Units/Levels:** "Metastatic" "Primary"
