IBM<-read.csv("rawData/IBMStock.csv")
GE<-read.csv("rawData/GEStock.csv")
PNG<-read.csv("rawData/ProcterGambleStock.csv")
CC<-read.csv("rawData/CocaColaStock.csv")
Boeing<-read.csv("rawData/BoeingStock.csv")
IBM$Date = as.Date(IBM$Date, "%m/%d/%y")
GE$Date = as.Date(GE$Date, "%m/%d/%y")
CC$Date = as.Date(CC$Date, "%m/%d/%y")
PNG$Date = as.Date(PNG$Date, "%m/%d/%y")
Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")
min(IBM$Date)
max(IBM$Date)
str(IBM)
mean(IBM$StockPrice)
min(GE$StockPrice)
summary(PNG)
summary(Boeing)
sd(PNG$StockPrice)
plot(CC, type="l")
lines(PNG$Date, PNG$StockPrice, col="red")
abline(v=as.Date(c("2000-03-01")), lwd=2)  #draw a vertical line
plot(IBM$Date[301:432], IBM$StockPrice[301:432], type="l", col="green", ylim=c(0,210))
lines(CC$Date[301:432], CC$StockPrice[301:432], type="l", col="red")
lines(PNG$Date[301:432], PNG$StockPrice[301:432], type="l", col="blue")
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], type="l", col="purple")
lines(GE$Date[301:432], GE$StockPrice[301:432], type="l", col="orange")
abline(v=as.Date(c("1997-09-01")), lwd=1)
abline(v=as.Date(c("1997-11-01")), lwd=1)
tapply(IBM$StockPrice, months(IBM$Date),mean, na.rm=TRUE)  #Order is Alphabetical.  Careful
plot(tapply(IBM$StockPrice, months(IBM$Date),mean, na.rm=TRUE))
mean(IBM$StockPrice)
abline(h=mean(IBM$StockPrice))

