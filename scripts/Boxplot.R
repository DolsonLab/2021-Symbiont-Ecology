
update.packages()
library(ggplot2)
library(dplyr)

require(ggplot2)

fullcubeHelix <- c("#673F03", "#7D3002", "#891901", "#A7000F", "#B50142", "#CD0778", "#D506AD", "#E401E7", "#AB08FF","#7B1DFF", "#5731FD","#5E8EFF", "#4755FF" ,"#6FC4FE", "#86E9FE", "#96FFF7", "#B2FCE3", "#BBFFDB", "#D4FFDD", "#EFFDF0")
shorthelix <- c("#A7000F", "#E401E7","#5E8EFF","#86E9FE","#B2FCE3")
elevenhelix <- c("#673F03", "#891901", "#B50142", "#D506AD", "#AB08FF", "#5731FD", "#4755FF", "#86E9FE", "#B2FCE3", "#D4FFDD", "#EFFDF0")

setwd("C:/Users/shake/OneDrive/Documents/GitHub/SymbulationEmp/stats_scripts")

initial_data <- read.table("munged_mult_sym_1000.dat", h=T)
updated_initial_data <- subset(initial_data,update != "update")
updated_initial_data <- subset(updated_initial_data, partner!="Host")
#updated_initial_data <- subset(updated_initial_data, update =="100000")



vert0 <- cbind(subset(updated_initial_data, treatment==0.0),  Treatment = "0%")
vert10 <- cbind(subset(updated_initial_data, treatment==0.1), Treatment = "10%")
vert20 <- cbind(subset(updated_initial_data, treatment==0.2), Treatment = "20%")
vert30 <- cbind(subset(updated_initial_data, treatment==0.3), Treatment = "30%")
vert40 <- cbind(subset(updated_initial_data, treatment==0.4), Treatment = "40%")
vert50 <- cbind(subset(updated_initial_data, treatment==0.5), Treatment = "50%")
vert60 <- cbind(subset(updated_initial_data, treatment==0.6), Treatment = "60%")
vert70 <- cbind(subset(updated_initial_data, treatment==0.7), Treatment = "70%")
vert80 <- cbind(subset(updated_initial_data, treatment==0.8), Treatment = "80%")
vert90 <- cbind(subset(updated_initial_data, treatment==0.9), Treatment = "90%")
vert100 <- cbind(subset(updated_initial_data, treatment==1.0),Treatment = "100%")

vert_sweep <- rbind(vert0,vert10,vert20,vert30,vert40,vert50,vert60,vert70,vert80,vert90,vert100)

ggplot(data=vert_sweep, aes(x=as.factor(treatment), as.numeric(donate), colour=partner)) + ylab("Final Mean Interaction Value") + xlab("Vertical Transmission Rate") +theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ geom_boxplot() + ylim(c(-1.0,1.0)) +scale_colour_manual(values=shorthelix)

outlier.colour=NULL


#For making Interaction Value over time graphs
ggplot(data=vert_sweep, aes(x=as.numeric(update), y=as.numeric(donate), color=partner, fill=partner)) +ylab("Mean Donation Rate") + xlab("Evolutionary time (in updates)") + geom_smooth() + scale_colour_manual(values = shorthelix)

#For making count over time graphs
ggplot(data=vert_sweep, aes(x=as.numeric(update), y=as.numeric(count), color=partner, fill=partner)) +ylab("Count") + xlab("Evolutionary time (in updates)") + geom_line() + facet_wrap(~Treatment) +scale_colour_manual(values=shorthelix) + scale_fill_manual(values=shorthelix) + theme(axis.text.x = element_text(angle=90, hjust=1))


#vert_sweep2 <- subset(vert_sweep, update < 10000), fun.data=mean_cl_boot, geom=smooth

#ggplot(data=vert_sweep, aes(x=update, y=as.numeric(donate), group=partner, colour=partner)) + ylab("Mean Donation Rate") + xlab("Evolutionary time (in updates)") + stat_summary(aes(color=partner, fill=partner),fun.data="mean_cl_boot", geom=c("smooth")) + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill="none") + facet_wrap(~Treatment) + ylim(c(-1,1))

ggplot(data=vert_sweep, aes(x=as.numeric(update), y=as.numeric(count), group=partner, colour=partner)) + ylab("Mean Interaction Behavior") + xlab("Evolutionary time (in updates)") + stat_summary(aes(color=partner, fill=partner),fun.data="mean_cl_boot") + geom_smooth() + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill="none") + facet_wrap(~Treatment) + ylim(c(-0.5,0.5)) +scale_colour_manual(values=shorthelix) + scale_fill_manual(values=shorthelix) + theme(axis.text.x = element_text(angle=90, hjust=1))


