#install.packages('aster')
require(aster)
data(echinacea)
oly<-read.csv('olyaster.csv')
vars<-c("ld14","brd14","lv14")
redata<-reshape(oly, varying=list(vars), direction="long",
                timevar="varb", times=as.factor(vars), v.names="resp")
names(redata)
class(redata$varb)
levels(redata$varb)
redata[42,]
redata <- data.frame (redata, root=1)
names(redata)
pred<-c(0,1,2)
fam<-c(1,1,2)
aout1 <- aster(resp~varb+Population, pred, fam, varb, id, root, data=redata,maxiter=1000)
summary(aout1, show.graph=T)



