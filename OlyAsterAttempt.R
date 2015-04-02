#install.packages('aster')
require(aster)
data(echinacea)
oly<-read.csv('oysbay1.csv')
oly2<-oly[-250,]
vars<-c("ldt1","ldt2","ldt3","ldt4","ldt5","ldt6","ldt7","ldt8","brt1","brt2",
        "brt3","brt4","brt5","brt6","brt7","brt8","lvt1","lvt2","lvt3","lvt4",
        "lvt5","lvt6","lvt7","lvt8")
redata<-reshape(oly2, varying=list(vars), direction="long",
                timevar="varb", times=as.factor(vars), v.names="resp")
names(redata)
class(redata$varb)
levels(redata$varb)
redata[42,]
redata <- data.frame (redata, root=1)
names(redata)
pred<-c(0,1,2,3,4,5,6,7,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16)
fam<-c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2)
aout1 <- aster(resp~varb+Population, pred, fam, varb, id, root, data=redata,maxiter=10000)
summary(aout1, show.graph=T)



