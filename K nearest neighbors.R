#KNN check our test data is nearest to which class A or B 
A1=c(0,0)
A2=c(1,1)
A3=c(2,2)

#class B training objects instances (cases)
B1=c(6,6)
B2=c(5.5,7)
B3=c(6.5,5)

train= rbind(A1,A2,A3,B1,B2,B3)
train  #trainData
#class labels vector (attached to each class instance)
cl=factor(c(rep("A",3),rep("B",3)))
library(class)

#the object to be classified
test=c(4,4)
result <- knn(train,test,c1,k=1,l=0,prob=FALSE,use.all=TRUE)
result
#print the test is nearest to B.
#testing on matrix 
test2= matrix(c(4,4,3,3,5,6,7,7), ncol=2,byrow=TRUE)
result2 <- knn(train,test2,c1,k=1,l=0,prob=FALSE,use.all=TRUE)
result2
#end
