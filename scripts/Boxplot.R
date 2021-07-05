
update.packages()
library(ggplot2)
library(dplyr)

require(ggplot2)

fullcubeHelix <- c("#673F03", "#7D3002", "#891901", "#A7000F", "#B50142", "#CD0778", "#D506AD", "#E401E7", "#AB08FF","#7B1DFF", "#5731FD","#5E8EFF", "#4755FF" ,"#6FC4FE", "#86E9FE", "#96FFF7", "#B2FCE3", "#BBFFDB", "#D4FFDD", "#EFFDF0")
shorthelix <- c("#A7000F", "#E401E7","#5E8EFF","#86E9FE","#B2FCE3")
elevenhelix <- c("#673F03", "#891901", "#B50142", "#D506AD", "#AB08FF", "#5731FD", "#4755FF", "#86E9FE", "#B2FCE3", "#D4FFDD", "#EFFDF0")

setwd("C:/Users/shake/OneDrive/Documents/GitHub/SymbulationEmp/stats_scripts")

initial_data <- read.table("munged_basic.dat", h=T)
updated_initial_data <- subset(initial_data,update != "update")
updated_initial_data <- subset(updated_initial_data, update =="100000")


vert0 <- cbind(subset(updated_initial_data, treatment== 0.0), Treatment= "0%")
vert01 <- cbind(subset(updated_initial_data, treatment== 0.1), Treatment= "10%")
vert02 <- cbind(subset(updated_initial_data, treatment== 0.2), Treatment= "20%")
vert03 <- cbind(subset(updated_initial_data, treatment== 0.3), Treatment= "30%")
vert04 <- cbind(subset(updated_initial_data, treatment== 0.4), Treatment= "40%")
#vert05 <- cbind(subset(initial_data, treatment== 0.5), Treatment= "50%")
#vert06 <- cbind(subset(initial_data, treatment== 0.6), Treatment= "60%")
#vert07 <- cbind(subset(initial_data, treatment== 0.7), Treatment= "70%")
#vert08 <- cbind(subset(initial_data, treatment== 0.8), Treatment= "80%")
#vert09 <- cbind(subset(initial_data, treatment== 0.9), Treatment= "90%")
#vert1 <- cbind(subset(initial_data, treatment== 1.0), Treatment= "100%")

vert_sweep <- rbind(vert0, vert01, vert02, vert03, vert04)

ggplot(data=vert_sweep, aes(x=Treatment, as.numeric(donate), colour=partner)) + ylab("Final Mean Interaction Value") + xlab("Vertical Transmission Rate") +theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ geom_boxplot() + ylim(c(-1.0,1.0)) +scale_colour_manual(values=shorthelix)

outlier.colour=NULL

#vert_sweep2 <- subset(vert_sweep, update < 10000)

#ggplot(data=vert_sweep, aes(x=update, y=as.numeric(donate), group=partner, colour=partner)) + ylab("Mean Donation Rate") + xlab("Evolutionary time (in updates)") + stat_summary(aes(color=partner, fill=partner),fun.data="mean_cl_boot", geom=c("smooth")) + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill="none") + facet_wrap(~Treatment) + ylim(c(-1,1))

#ggplot(data=vert_sweep, aes(x=update, y=as.numeric(donate), group=partner, colour=partner)) + ylab("Mean Interaction Behavior") + xlab("Evolutionary time (in updates)") + stat_summary(aes(color=partner, fill=partner),fun.data="mean_cl_boot", geom=c("smooth")) + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill="none") + facet_wrap(~Treatment) + ylim(c(-0.5,0.5)) +scale_colour_manual(values=shorthelix) + scale_fill_manual(values=shorthelix) + theme(axis.text.x = element_text(angle=90, hjust=1))


