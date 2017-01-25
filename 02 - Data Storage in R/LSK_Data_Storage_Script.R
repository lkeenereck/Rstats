## Setting the working directory
setwd("~/Desktop/R/Rstats/02 - Data Storage in R")

getwd()

## Importing and removing data
data <- read.csv("HWA_DATA.csv")
head(data)
rm(data)

data$Day
Day <- data$Day

## Learning about vectors
point <- seq(1, 12)
rm(Point)
point
 
# Character vectors
site <- c("A", "B", "C",
          "A", "B", "C",
          "A", "B", "C",
          "A", "B", "C")
site
Site <- rep(c("A", "B", "C"), 4)
Site
Location <- rep(c("Edge","Interior"), each=3, length=12)
Location
Duration <- rep(c("5", "10"), each=6)
Duration

# Numeric vectors
Species_count <- c("12", "10", "13", "11", "13", "12", "19", "10", "12", "11", "21", "12")
Species_count
length(Species_count)

# Logical vector
logic <- Species_count > 20
logic
Species_count[which(Species_count >20)]

## Factors
SiteFactor <- factor(Site, levels=c("A", "B", "C"))
SiteFactor
LocationFactor <- factor(Location, levels=c("Edge", "Interior"))
LocationFactor
remove(SiteFactor)
remove(LocationFactor)
DurationFactor <- factor(Duration, levels=c("5", "10"))
DurationFactor

## Creating a table
bird.table2 <- cbind(point, Site, Location, Duration, Species_count)
bird.table2

# Convert table to a data frame
as.data.frame(bird.table2)
