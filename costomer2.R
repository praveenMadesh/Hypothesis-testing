data <- read.csv(file.choose())
View(data)
library(BSDA)
library(e1071)
library(nortest)
attach(data)
install.packages("tidyr")
library(tidyr)
#table formation and stacking of data
data1 <- table(gather(data,nation,status,1:4))
data1
#H0 <- all the centers have same defective% 
#H1 <- different centers have defective%
chisq.test(data1)
#pvalue is 0.2771 > 0.05 failed to reject null hypothesis