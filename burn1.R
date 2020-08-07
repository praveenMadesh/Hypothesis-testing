#buyers ratio 
#the dependent and independent variables are discrete

data <- read.csv(file.choose())
View(data)
data1<- data[,-1]
data1
#H0 ->product sales ratio are same for males and females
#Ha ->product sales ratio are not same for males and females

chisq.test(data1)#p =0.6603 > 0.05 -> p high null fly -> failed to reject null hypothesis

##product sales ratio are same for males and females