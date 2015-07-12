plot1=function(data=NULL){
    if (is.null(data)){
        url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url,"EPC.zip")
        unzip("EPC.zip",exdir="EPC")
        HPC<- read.csv("~/EPC/household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
        HPC.data=subset(HPC,HPC[,1]=="1/2/2007"|Date=="2/2/2007")
        attach(HPC.data)
    }else{attach(data)}
    
    hist(Global_active_power,xlab = "Global Active Power (kilowatts)",main = "Global Active Power",col = "red")
}