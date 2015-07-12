plot3=function(data=NULL){
    
    if (is.null(data)){
    url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(url,"EPC.zip")
    unzip("EPC.zip",exdir="EPC")
    HPC<- read.csv("~/EPC/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
    HPC.data=subset(HPC,HPC[,1]=="1/2/2007"|Date=="2/2/2007")
    attach(HPC.data)
    }else{attach(data)}
    
    plot(Sub_metering_1,type="n",ylab = "Energy sub metering",xlab = "",xaxt="n")
    lines(Sub_metering_1,type = "l",col="black")
    lines(Sub_metering_2,type = "l",col="red")
    lines(Sub_metering_3,type = "l",col="blue")
    axis(1,at=c(0,1500,2872),labels=c("Thu","Fri","Sat"))
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty = 1)
}