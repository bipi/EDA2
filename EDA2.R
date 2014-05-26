setwd("C:/Users/barto_000/Desktop/r/EDA2/git")
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#1

plot1<-tapply(NEI$Emissions, NEI$year, sum)
plot(names(plot1),plot1, type='l')

#2

plot2<-tapply(NEI$Emissions[NEI$fips == "24510"], NEI$year[NEI$fips == "24510"], sum)
plot(names(plot2),plot2, type='l')

#3
<<<<<<< HEAD
plot3<-tapply(NEI$Emissions[NEI$fips == "24510"],
              list(NEI$year[NEI$fips == "24510"], NEI$type[NEI$fips == "24510"]),
              sum)
plot3<-as.data.frame(plot3)
names(plot3)<-c('nonroad','nonpoint','onroad','point')
=======
plot3<-tapply(NEI$Emissions[NEI$fips == "24510"], 
              list(NEI$year[NEI$fips == "24510"], NEI$type[NEI$fips == "24510"]),
              sum)
plot3<-as.data.frame(plot3)
names(plot3)<-c('nonroad','nonpoint','onroad','point') 
>>>>>>> origin/master
plot(row.names(plot3),plot3$nonpoint, type='l')

#4
SCCm<-subset.data.frame(SCC, EI.Sector==('Fuel Comb - Electric Generation - Coal')
                        |EI.Sector==('Fuel Comb - Industrial Boilers, ICEs - Coal')
                        |EI.Sector==('Fuel Comb - Comm/Institutional - Coal')
<<<<<<< HEAD
)
SCCmv<-SCCm$SCC
NEIm<-subset.data.frame(NEI, SCC %in% SCCmv)
plot4<-tapply(NEIm$Emissions, NEIm$year, sum)
plot(names(plot4),plot4, type='l')
=======
                        )
NEIm<-subset.data.frame(NEI, SCC==SCCmv)
plot4<-tapply(NEIm$Emissions, NEIm$year, sum)
plot(names(plot4),plot4, type='l')

>>>>>>> origin/master
