#install packages
install.packages(c("ggthemes", "hrbrthemes", "ggsci", "ggpubr", "RcolorBrewer"))

# load packages
library(tidyverse)
library(ggthemes)
library(ggsci)
library(ggpubr)
library(RColorBrewer)

## data import
data <- read.csv("clean_data/indiviual_KAP_clean.csv")

## Check data structure
glimpse(data)

