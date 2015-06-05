WHO<-read.csv("rawData/WHO.csv")
str(WHO)
summary(WHO)
WHO_Europe<-subset(WHO, Region=="Europe")
write.csv(WHO_Europe, "rawData/WHO_Europe.csv")
ls()
rm(WHO_Europe)
ls()
Outliers <-subset(WHO,WHO$GNI>10000 & WHO$FertilityRate>2.5)
Outliers
Outliners[c("Country","GNI","FertilityRate")]
Outliers[c("Country","GNI","FertilityRate")]
which.min(WHO$Over60)
WHO$Country[183]
which.max(WHO$LiteracyRate)
WHO$Country[44]
hist(WHO$CellularSubscribers)
boxplot(WHO$LifeExpectancy, WHO$Region)
boxplot(WHO$LifeExpectancy~WHO$Region)
boxplot(WHO$LifeExpectancy~WHO$Region, ylab="Life Expectancy")
boxplot(WHO$LifeExpectancy~WHO$Region, ylab="Life Expectancy", main="ABC")
table(WHO$Region)
tapply(WHO$Over60, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, mean)
tapply(WHO$LiteracyRate, WHO$Region, mean, na.rm = TRUE)
tapply(WHO$LiteracyRate, WHO$Region, min, na.rm = TRUE)
tapply(WHO$ChildMortality, WHO$Region, mean, na.rm = TRUE)

