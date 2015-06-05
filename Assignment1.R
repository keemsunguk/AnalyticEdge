mvt<-read.csv("rawData/mvtWeek1.csv")
max(mvt$ID)
min(mvt$Beat)
table(mvt$Arrest)
table(mvt$LocationDescription)     #How many observations have a LocationDescription value of ALLEY
DateConvert = as.Date(strptime(mvt$Date, "%m/%d/%y %H:%M")) #convert these characters into a Date object in R
summary(DateConvert)
mvt$Month = months(DateConvert)         #extract the month , and add these variables to our data frame mvt
mvt$Weekday = weekdays(DateConvert)     #and the day of the week
mvt$Date = DateConvert   #replace the old Date variable with 
table(mvt$Month)
min(table(mvt$Month))   #In which month did the fewest motor vehicle thefts occur 
max(table(mvt$Weekday))
table(mvt$Weekday)
Arst<-subset(mvt,mvt$Arrest == TRUE) #largest number of motor vehicle thefts for which an arrest was made
max(table(Arst$Month, Arst$Arrest)) #largest number of motor vehicle thefts for which an arrest was made

hist(mvt$Date, breaks=100)
boxplot(mvt$Date~mvt$Arrest)
table(mvt$Year,mvt$Arrest)
sort(table(mvt$LocationDescription))
Top5<-subset(mvt, mvt$LocationDescription == "STREET" | mvt$LocationDescription == "PARKING LOT/GARAGE(NON.RESID.)" | mvt$LocationDescription == "ALLEY" | mvt$LocationDescription == "GAS STATION" |mvt$LocationDescription == "DRIVEWAY - RESIDENTIAL")
Top5$LocationDescription = factor(Top5$LocationDescription) #Clean up. now only has 5 values
rate<-c(0,0,0,0,0)
t5<-table(Top5$LocationDescription,Top5$Arrest)
rate<-t5[,2]/(t5[,1]+t5[,2])

Gas<-subset(Top5,Top5$LocationDescription=="GAS STATION")
max(table(Gas$Weekday))
table(Gas$Weekday)

Res<-subset(Top5,Top5$LocationDescription=="DRIVEWAY - RESIDENTIAL")
min(table(Res$Weekday))
table(Res$Weekday)
#======================Stock===================#
