#install.packages('aster')
require(aster)
data(echinacea)
oly<-read.csv('olyaster.csv')
vars<-c("Live.Dead","Brood","Larvae")
redata<-reshape(oly, varying=list(vars), direction="long",
                timevar="varb", times=as.factor(vars), v.names="resp")
names(redata)
class(redata$varb)
levels(redata$varb)
redata[42,]
redata <- data.frame (redata, root=1)
names(redata)
pred<-c(0,1,2)
fam<-c(1,1,1)
sapply(fam.default(),as.character)[fam]
all(pred < seq(along=pred))
aout1 <- aster(resp~varb+Population+Site, pred, fam, varb, id, root, data=redata)
summary(aout1, show.graph=T)
