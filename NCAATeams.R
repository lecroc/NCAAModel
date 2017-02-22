## NCAA Data

library(dplyr)

## Load data on teams

tdat<-read.csv("C:/Kaggle/NCAA/RegularSeasonDetailedResults.csv")
teams<-read.csv("C:/Kaggle/NCAA/Teams.csv")
seasons<-read.csv("C:/Kaggle/NCAA/Seasons.csv")
seasons<-filter(seasons, Season>=2003)

team<-teams[358,1]
season<-seasons[1,1]

tdat1<-filter(tdat, Season==season)
tdat1<-filter(tdat1, Wteam==team | Lteam==team)
games<-nrow(tdat1)

homewins<-nrow(subset(tdat1, Wteam==team & Wloc=="H" ))
homelosses<-nrow(subset(tdat1, Lteam==team & Wloc=="A"))
roadwins<-nrow(subset(tdat1, Wteam==team & Wloc=="A"))
roadlosses<-nrow(subset(tdat1, Lteam==team & Wloc=="H"))
neutwins<-nrow(subset(tdat1, Wteam==team & Wloc=="N"))
neutlosses<-nrow(subset(tdat1, Lteam==team & Wloc=="N"))


