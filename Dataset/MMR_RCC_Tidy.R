# Reading file sent by Angelica
library(readxl)
Data_Primary <- read_excel("DataSet-Alcides, 604, 605 and 609.xlsx", sheet = 1, skip = 1)
Data_Metastatic <- read_excel("DataSet-Alcides, 604, 605 and 609.xlsx", sheet = 2)

colnames(Data_Primary) <- c(
  "ID",
  "SP",
  "TMA",
  "Diagnosis",
  "pT",
  "Fuhrman",
  "Multifocal",
  "Margin",
  "Size",
  "Age",
  "Sex",
  "Race",
  "Other_Tumor",
  "Outcome",
  "DOD",
  "Progression",
  "FU",
# PDL1 Expression in Nontumor Tissue (9 variables)
  "PDL1_Nontumor_Percentage",
  "PDL1_Nontumor_Location",
  "PDL1_Nontumor_H0",
  "PDLI_Nontumor_H1",
  "PDL1_Nontumor_H2",
  "PDL1_Nontumor_H3",
  "PDL1_Nontumor_H",
  "PDL1_Nontumor_Stroma_Percentage",
  "Host_Response_Nontumor",
# FOXP3 Expression in Nontumor Tissue (6 variables)
  "FOXP3_Nontumor_Lymphocytes",
  "FOXP3_Nontumor_Stroma_Lymphocytes",
  "FOXP3_Nontumor_Lymphocytes_Intensity",
  "FOXP3_Nontumor",
  "FOXP3_Nontumor_Intensity",
  "FOXP3_Nontumor_Percentage",
# CD8 & Ki67 Expression in Nontumor Tissue (5 variables)
  "CD8_Nontumor",
  "CD8_Ki67_Nontumor",
  "CD8_Nontumor_Stroma",
  "CD8_Ki67_Nontumor_Stroma",
  "Ki67_Nontumor_Percentage",
  "PDL1_Tumor_Percentage",
  "PDL1_Tumor_Location",
  "PDL1_Tumor_H0",
  "PDL1_Tumor_H1",
  "PDL1_Tumor_H2",
  "PDL1_Tumor_H3",
  "PDL1_Tumor_H",
  "PDL1_Tumor_Stroma_Percentage",
  "Host_Response_Tumor",
# FOXP3 Expression in Tumor Tissue (6 variables)
  "FOXP3_Tumor_Lymphocytes",
  "FOXP3_Tumor_Stroma_Lymphocytes",
  "FOXP3_Tumor_Lymphocytes_Intensity",
  "FOXP3_Tumor",
  "FOXP3_Tumor_Intensity",
  "FOXP3_Tumor_Percentage",
# CD8 & Ki67 in Tumor Tissue (5 variables)
  "CD8_Tumor",
  "CD8_Ki67_Tumor",
  "CD8_Tumor_Stroma",
  "CD8_Ki67_Tumor_Stroma",
  "Ki67_Tumor_Percentage"
)

# Tidying the Metastatic RCC Dataset (12 variables)
library(plyr)
Data_Metastatic <- rename(Data_Metastatic, c(
# Clinicopathologic Features
  "Case" = "ID",
  "SP" = "SP",
  "TMA: 604/605, 606/607, 609 " = "TMA",
  "Dx: ccRCC" = "Diagnosis",
  "pT stage: T1a; T1b; T2a; T2b; T3a; T3b; T3c; T4" = "pT",
  "Age" = "Age",
  "Sex: Female, Male" = "Sex",
  "Race: White, Black, Asian, Other" = "Race",
  "Dead or alive" = "Outcome",
  "Dzspecifc: DOD" = "DOD",
  "Progression" = "Progression",
  "FU length (days)" = "FU",
# PDL1 Expression (9 variables)
  "PDL1 tumor %" = "PDL1_Tumor_Percentage",
  "PDLCytoplasmic location tumor" = "PDL1_Tumor_Location",
  "PDL1 tm 0" = "PDL1_Tumor_H0",
  "PDL1 tm 1" = "PDL1_Tumor_H1",
  "PDL1 tm 2" = "PDL1_Tumor_H2",
  "PDL1 tm 3" = "PDL1_Tumor_H3",
  "PDL1 tm H score" = "PDL1_Tumor_H",
  "PDL1 inflm %" = "PDL1_Tumor_Stroma_Percentage",
  "total host response 0-3" = "Host_Response_Tumor",
# FOXP3 Expression (6 variables)
  "FOXP3 intraep lym #/hpf" = "FOXP3_Tumor_Lymphocytes",
  "FOXP3 in lym stroma #/hpf" = "FOXP3_Tumor_Stroma_Lymphocytes",
  "FOXPStrong staining intensity lym No staining-Strong staining" =
    "FOXP3_Tumor_Lymphocytes_Intensity",
  "FOXP3 in tumor #/hpf" = "FOXP3_Tumor",
  "FOXP3 intensity tumor 0-3" = "FOXP3_Tumor_Intensity",
  "FOXP3 % tumor positivity " = "FOXP3_Tumor_Percentage",
# CD8 & Ki67 (5 variables)
  "CD8 in tumor #/hpf" = "CD8_Tumor",
  "CD8+Ki67+ in tumor #/hpf" = "CD8_Ki67_Tumor",
  "CD8 in stroma #/hpf" = "CD8_Tumor_Stroma",
  "CD8/Ki67 in stroma #/hpf" = "CD8_Ki67_Tumor_Stroma",
  "Ki67 % of tumor"  = "Ki67_Tumor_Percentage"
  )
)
# Converting TMA Variable in Metastatic Dataset to Factor, for Proper Merging
Data_Metastatic$TMA <- factor(Data_Metastatic$TMA)
# Adding extra columns (additional variables) to Data_Metastatic to make it match Data_Primary's number of columns
Data_Metastatic$Fuhrman <- NA
Data_Metastatic$Multifocal <- NA
Data_Metastatic$Margin <- NA
Data_Metastatic$Size <- NA
Data_Metastatic$Other_Tumor <- NA
Data_Metastatic$PDL1_Nontumor_Percentage <- NA
Data_Metastatic$PDL1_Nontumor_Location <- NA
Data_Metastatic$PDL1_Nontumor_H0 <- NA
Data_Metastatic$PDLI_Nontumor_H1 <- NA
Data_Metastatic$PDL1_Nontumor_H2 <- NA
Data_Metastatic$PDL1_Nontumor_H3 <- NA
Data_Metastatic$PDL1_Nontumor_H <- NA
Data_Metastatic$PDL1_Nontumor_Stroma_Percentage <- NA
Data_Metastatic$Host_Response_Nontumor <- NA
Data_Metastatic$FOXP3_Nontumor_Lymphocytes <- NA
Data_Metastatic$FOXP3_Nontumor_Stroma_Lymphocytes <- NA
Data_Metastatic$FOXP3_Nontumor_Lymphocytes_Intensity <- NA
Data_Metastatic$FOXP3_Nontumor <- NA
Data_Metastatic$FOXP3_Nontumor_Intensity <- NA
Data_Metastatic$FOXP3_Nontumor_Percentage <- NA
Data_Metastatic$CD8_Nontumor <- NA
Data_Metastatic$CD8_Ki67_Nontumor <- NA
Data_Metastatic$CD8_Nontumor_Stroma <- NA
Data_Metastatic$CD8_Ki67_Nontumor_Stroma <- NA
Data_Metastatic$Ki67_Nontumor_Percentage <- NA

# Adding a Variable for Specifying Tissue
Data_Primary$Tissue <- "Primary"
Data_Metastatic$Tissue <- "Metastatic"

# Merging Primary and Metastatic Datasets
Data <- rbind(Data_Primary, Data_Metastatic)

# Changing Levels for Proper Identification of Variable Class
Data$Fuhrman <- revalue(factor(Data$Fuhrman), c(
  "1" = "G1",
  "2" = "G2",
  "3" = "G3",
  "4" = "G4"))
Data$Multifocal <- revalue(Data$Multifocal, c(
  "Focal" = "No",
  "Multifocal " = "Yes"
))
Data$Host_Response_Tumor <- revalue(factor(Data$Host_Response_Tumor), c(
  "0" = "Absent",
  "1" = "Weak",
  "2" = "Moderate",
  "3" = "Strong"
))
Data$Host_Response_Nontumor <- revalue(factor(Data$Host_Response_Nontumor), c(
  "0" = "Absent",
  "1" = "Weak",
  "2" = "Moderate",
  "3" = "Strong"
))
# Changing NAs for 0s in column FOX_Nontumor_Percentage
Data$FOXP3_Nontumor_Percentage[is.na(Data$FOXP3_Nontumor_Percentage)] <- 0
# Converting character variable "Tissue" to factor variable
Data$Tissue <- factor(Data$Tissue)
# Fixing the weird values in column PDL1_Tumor_Percentage
Data$PDL1_Tumor_Percentage <- revalue(Data$PDL1_Tumor_Percentage, c(
  "<1" = 0.5,
  "1NA1" = 1.1,
  "1NA6" = 1.6,
  "1NA8" = 1.8
))
Data$PDL1_Tumor_Percentage <- as.numeric(Data$PDL1_Tumor_Percentage)
# Fixing the weird values in column PDL1_Tumor_H
Data$PDL1_Tumor_H <- revalue(Data$PDL1_Tumor_H, c(
  "<1" = 0.5,
  "1NA1" = 1.1,
  "1NA8" = 1.8
))
Data$PDL1_Tumor_H <- as.numeric(Data$PDL1_Tumor_H)
# Fixing the weird values in column FOXP3_Tumor_Percentage
Data$FOXP3_Tumor_Percentage <- revalue(Data$FOXP3_Tumor_Percentage, c(
  "0NA01" = 0.01
))
Data$FOXP3_Tumor_Percentage <- as.numeric(Data$FOXP3_Tumor_Percentage)
# Fixing the "0" level in FOXP3_Tumor_Lymphocytes_Intensity
Data$FOXP3_Tumor_Lymphocytes_Intensity <- revalue(Data$FOXP3_Tumor_Lymphocytes_Intensity, c("0" = "No staining"
  ))
# Fixing differences in levels capitalization
Data$FOXP3_Nontumor_Lymphocytes_Intensity <- revalue(Data$FOXP3_Nontumor_Lymphocytes_Intensity, c(
  "No Staining" = "No staining",
  "Weak Staining" = "Weak staining",
  "Moderate Staining" = "Moderate staining",
  "Strong Staining" = "Strong staining"
))
Data$FOXP3_Nontumor_Intensity <- revalue(Data$FOXP3_Nontumor_Intensity, c(
  "No Staining" = "No staining"
))

# Excluding rows with NAs
Data <- Data[complete.cases(Data$SP),]

# Saving the Final Dataset
write.csv(Data, "RCC_Dataset.csv", row.names = FALSE)
