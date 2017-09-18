data<- iris
dim(data)
dt<-data[1:25,]  #selecting,1 to 25 row and all column
dim(dt) #checking dimension of dataframe/matrix
xdata<-dt
ydata<-xdata[,3:4]
xd<-head(ydata,20)
clust<- hclust(dist(xd))   #unsupervised 
plot(clust)

#2nd example

x1=c(1,2)
x2=c(2.5,4.5)
x3=c(2,2)
x4=c(4,1.5)
x5=c(4,2.5)

df=data.frame(x1,x2,x3,x4,x5) #creating data frame of objects
df
dm=as.matrix(df)  #converting in matrix form,
tt=t(dm)
tt
dd<-dist(tt)
dd
csin <- hclust(dd , method="single")
plot(csin) 

#end
#example 3
mtcars
mtd<-mtcars[1:10,]
mtdm<-as.matrix(mtd)
mtdm
ddd<-dist(mtdm)
ddd
csinsin <- hclust(ddd , method="single")  #grouping elements on similar attributes
plot(csinsin) 
