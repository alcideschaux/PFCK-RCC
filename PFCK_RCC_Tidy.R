# Reading CSV file
Data <- read.csv("Dataset/RCC_Dataset.csv")
# Creating a vector of columns to exclude
Vars_Exclude <- c(
  grep("ID", colnames(Data)),
  grep("TMA", colnames(Data)),
  grep("Diagnosis", colnames(Data)),
  grep("_H0", colnames(Data)),
  grep("_H1", colnames(Data)),
  grep("_H2", colnames(Data)),
  grep("_H3", colnames(Data))
)
# Excluding unused columns
Data <- Data[, -(Vars_Exclude)]
# Fixing structure of variables
library(plyr)
Data$Host_Response_Nontumor <- factor(
  Data$Host_Response_Nontumor,
  levels = c("Absent", "Weak", "Moderate", "Strong"),
  ordered = TRUE
)
Data$Host_Response_Tumor <- factor(
  Data$Host_Response_Tumor,
  levels = c("Absent", "Weak", "Moderate", "Strong"),
  ordered = TRUE
)
Data$FOXP3_Nontumor_Lymphocytes_Intensity <- factor(
  Data$FOXP3_Nontumor_Lymphocytes_Intensity,
  levels = c("No staining", "Weak staining", "Moderate staining", "Strong staining"),
  ordered = TRUE
)
Data$FOXP3_Tumor_Lymphocytes_Intensity <- factor(
  Data$FOXP3_Tumor_Lymphocytes_Intensity,
  levels = c("No staining", "Weak staining", "Moderate staining", "Strong staining"),
  ordered = TRUE
)
Data$FOXP3_Nontumor_Intensity <- factor(
  Data$FOXP3_Nontumor_Intensity,
  levels = c("No staining", "Weak staining", "Moderate staining", "Strong staining"),
  ordered = TRUE
)
Data$FOXP3_Tumor_Intensity <- factor(
  Data$FOXP3_Tumor_Intensity,
  levels = c("No staining", "Weak staining", "Moderate staining", "Strong staining"),
  ordered = TRUE
)
Data$PDL1_Nontumor_Location <- factor(Data$PDL1_Nontumor_Location,
  levels = c("Cytoplasmic", "Membraneous", "Cytoplasmic & Membraneous")
)
Data$PDL1_Tumor_Location <- revalue(Data$PDL1_Tumor_Location, c(
  "Cytoplasmic00" = "Cytoplasmic",
  "Both" = "Cytoplasmic & Membraneous"
))
Data$PDL1_Tumor_Location <- factor(Data$PDL1_Tumor_Location,
  levels = c("Cytoplasmic", "Membraneous", "Cytoplasmic & Membraneous")
)

# Reshaping data for variables with unique values
library(reshape2)
Data$TMA_index <- "TMA_Spots" # For counting TMA spots per case
Data_Wide <- dcast(Data, SP + pT + Fuhrman + Multifocal + Margin + Size + Age + Sex + Race + Other_Tumor + Outcome + DOD + Progression + FU + Tissue ~ TMA_index)
