require(aster)
olyblock<-read.csv("asterblock2.csv")
vars<-c("ldt1","ldt2","ldt3",
        "brt1","brt2","brt3",
        "lvt1","lvt2","lvt3")
redata<-reshape(olyblock, varying=list(vars), direction="long",
                timevar="varb", times=as.factor(vars), v.names="resp")
names(redata)
class(redata$varb)
levels(redata$varb)
redata[42,]
redata <- data.frame (redata, root=1, fit=0)
names(redata)
pred<-c(0,1,2,1,2,3,4,5,6)
fam<-c(1,1,1,1,1,1,2,2,2)
rout<-reaster(resp~varb+fit:(Site*Region),
              list(block = ~fit:Block,
                   pop = ~fit:Population),
              pred, fam, varb,id,root,data=redata)

rout<-aster(resp~varb+Site+Population+fit:(Site*Population),
              pred, fam, varb,id,root,data=redata, maxiter=5000)
