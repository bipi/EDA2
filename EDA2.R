setwd("C:/Users/barto_000/Desktop/r/EDA2/git")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

plot1<-tapply(NEI$Emissions, NEI$year, sum)
plot(names(plot1),plot1, type='l')


plot2<-tapply(NEI$Emissions[NEI$fips == "24510"], NEI$year[NEI$fips == "24510"], sum)
plot(names(plot2),plot2, type='l')

plot3<-tapply(NEI$Emissions[NEI$fips == "24510"], 
              list(NEI$year[NEI$fips == "24510"], NEI$type[NEI$fips == "24510"]),
              sum)
plot3<-as.data.frame(plot3)
plot(row.names(plot3),plot3$NONPOINT, type='l')

