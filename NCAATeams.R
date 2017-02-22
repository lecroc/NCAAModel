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
wins<-subset(tdat1, Wteam==team)
losses<-subset(tdat1, Lteam==team)
fgm<-sum(wins$Wfgm)+sum(losses$Lfgm)
fga<-sum(wins$Wfga)+sum(losses$Lfga)
fgm3<-sum(wins$Wfgm3)+sum(losses$Lfgm3)
fga3<-sum(wins$Wfga3)+sum(losses$Lfga3)
ftm<-sum(wins$Wftm)+sum(losses$Lftm)
fta<-sum(wins$Wfta)+sum(losses$Lfta)
or<-sum(wins$Wor)+sum(losses$Lor)
dr<-sum(wins$Wdr)+sum(losses$Ldr)
ast<-sum(wins$Wast)+sum(losses$Last)
to<-sum(wins$Wto)+sum(losses$Lto)
stl<-sum(wins$Wstl)+sum(losses$Lstl)
blk<-sum(wins$Wblk)+sum(losses$Lblk)
pf<-sum(wins$Wpf)+sum(losses$Lpf)
tp<-sum(wins$Wscore)+sum(losses$Lscore)
tpa<-sum(wins$Lscore)+sum(losses$Wscore)


