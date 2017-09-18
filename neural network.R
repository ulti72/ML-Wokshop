#Introduction to neural network
concrete<- read.csv("concrete.csv",stringsAsFactors = FALSE)
str(concrete)
normalize <- function(x){
  return( (x - min(x)) / (max(x) - min(x)))
}
concrete_norm <- as.data.frame(lapply(concrete , normalize))
summary(concrete_norm$strength)
concrete_train <- concrete_norm[1:773,]
concrete_test <- concrete_norm[774:1030,]
library(neuralnet)
concrete_model <- neuralnet(strength ~ cement + slag + ash +water +superplastic + coarseagg + age + fineagg , data = concrete_train)
concrete_model
#plot(concrete_model)

concrete_model <- neuralnet(strength ~ cement + slag + ash +water +superplastic + coarseagg + age + fineagg , data = concrete_train, hidden=2)
#plot(concrete_model)
set.seed(111)
concrete_model <- neuralnet(strength ~ cement + slag + ash +water +superplastic + coarseagg + age + fineagg , data = concrete_train, hidden=100)
plot(concrete_model)
