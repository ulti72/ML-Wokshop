emp.data <- data.frame(Birthrate= c(49.5,48,47,43,40,41,40,37,28,18,1.6),
                      Deathrate= c(41,47,38,31,28,22,18,14,10,9,7),
                      Population = c(240,239,240,280,300,350,500,620,890,981,1200))
input1 <- emp.data[, c("Birthrate" , "Deathrate","Population")]
BR <- c(emp.data$Birthrate)
DR <- c(emp.data$Deathrate)
PP <- c(emp.data$Population)

model1 <- lm( PP ~ BR+DR,input1)
summary(model1)

modelB <- lm(PP ~ BR, input1)
modelD <- lm(PP ~ DR, input1)
plot( BR, PP , xlim = range(c(BR,DR)),abline(modelB) ,col= "blue", main = "Birthrate Deathrate")
par( new= TRUE)
plot( DR, PP , xlim = range(c(BR,DR)),abline(modelD, col="blue") ,col= "red", main = "Birthrate,Deathrate")
