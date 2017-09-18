emp.data<- data.frame(driving_experience=c(5,2,12,9,15,6,25,16),
                      insurance_prenium=c(64,87,50,71,44,56,42,60))
input <-emp.data[,c("driving_experience","insurance_prenium")]
de<- c (emp.data$driving_experience)
ip<-c(emp.data$insurance_prenium)

model<-lm(ip ~de , data=input)
model
a <- coef(model)[1]
b<-coef(model)[2]
#plot(de , ip ,col="blue" , main="ex vs prenium regression", abline(model),pch=20, xlab="Exp", ylab = "Ins prenium")


#2nd exaple

x <- c(10,20,30,40,50) #input
y = c(4,22,44,60,82)  #output
data2 <-data.frame(x,y)
input2 <-data2[,c("x","y")]
de2<- c (data2$x)
ip2<-c(data2$y)
model2 <- lm(ip2 ~ de2 , data=input2 )
a <- coef(model2)[1]
b<-coef(model2)[2]

plot(de2 ,ip2 ,col="blue" , main="x vs y", abline(model2),pch=20, xlab="x", ylab = "y")
summary(model2)
input2
data2
