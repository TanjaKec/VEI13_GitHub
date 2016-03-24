rm(list=ls())
library(ggplot2)
#==========================================
# Rose Chart ==============================
#==========================================
category <- c("Culture", "Energy", "Placeness", "Systems", "Vernacular")
score <- c(0, 0, 0, 0, 0)
myd <- data.frame(category, score)

ggplot(myd, aes(category, weight=score, fill = category)) + geom_bar(width = 1, color=1, lwd=0.8)

last_plot() + scale_fill_brewer(palette = "Set1") + geom_hline(yintercept=seq(0, 5, by=1), colour = "black", size = 0.2) + scale_y_continuous(breaks = 0:5) + theme_linedraw() + coord_polar()  + labs(x = "", y = "") + theme(panel.grid.major = element_line(color="white", size=0.2), legend.position = "bottom", axis.ticks.y=element_line(size=0), axis.ticks = element_blank(), axis.text.x=element_text(size=8, face="bold"),  axis.text.y=element_text(size=0)) 
#
#=======================================
# Rose Chart Segments ==================
#=======================================
quartz()
ggplot(myd, aes(category, weight=score, fill = category)) + geom_bar(width = 1, alpha=.85, color=1, lwd=0.8)

last_plot() + scale_fill_brewer(palette = "Set1") + geom_hline(yintercept=seq(0, 5, by=1), colour = "black", size = 0.2) + scale_y_continuous(breaks = 0:5) + theme_linedraw() + coord_polar()  + labs(x = "", y = "") + theme(panel.grid.major = element_line(color="gray", size=0.1), legend.position = "none", axis.ticks.y=element_line(size=0), axis.text.x=element_text(size=0),  axis.text.y=element_text(size=0)) + facet_wrap( ~ category, ncol = 5)
#
#=======================================
# Google Maps ==========================
#=======================================
library(ggmap)

MNG <- read.csv("MNG_VEI.csv", header=T)

map <- get_map(location = c(lon = 18.653106, lat = 42.4653106), zoom = 11)
ggmap(map)

last_plot() + geom_point(aes(x = long, y = lat, size = score), data = MNG, alpha = .5)

#====================================
#====================================
ggmap(map)
last_plot() + geom_point(aes(x = long, y = lat, size = score, darken=0.3), data = MNG, colour="gray25", alpha=.5)
last_plot() + geom_point(aes(x = long, y = lat, size = score-1.5, alpha=score), data=MNG, colour="maroon1") + theme(axis.text.x=element_text(size=0),  axis.text.y=element_text(size=0), axis.ticks = element_blank(),  legend.position = "none", axis.title=element_text(size=0))

#====================================
#====================================
