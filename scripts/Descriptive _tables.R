# load packages
library(tidyverse)
library(gtsummary)
library(gt)
library(readxl)
library(dplyr)
library(easystats)

# load data as excel
data <- read_excel("clean_data/clean_data.xlsx")


# Table 1. Demographic characteristics of study participants
data |> 
  select(1 : 11) |> 
  tbl_summary(statistic = all_continuous() ~ "{mean} {sd}") |> 
  as_gt() |> 
  gtsave("table/Table1.docx")



# Table 2. Major sources of information about antibiotic parents
data |> 
  select(47 : 55) |> 
  tbl_summary(statistic = all_continuous() ~ "{mean} {sd}") |> 
  as_gt() |> 
  gtsave("table/Table2.docx")



# Table 3. Level of knowledge, attitudes, and practices towards antibiotic resistance among parents with school-going children
data |> 
  select(25, 37, 45) |> 
  tbl_summary(statistic = all_continuous() ~ "{mean} {sd}") |> 
  as_gt() |> 
  gtsave("table/Table3.docx")

