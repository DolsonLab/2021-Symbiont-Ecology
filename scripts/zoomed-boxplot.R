update.packages()
library(ggplot2)
library(dplyr)

require(ggplot2)


fullcubeHelix <- c("#673F03", "#7D3002", "#891901", "#A7000F", "#B50142", "#CD0778", "#D506AD", "#E401E7", "#AB08FF","#7B1DFF", "#5731FD","#5E8EFF", "#4755FF" ,"#6FC4FE", "#86E9FE", "#96FFF7", "#B2FCE3", "#BBFFDB", "#D4FFDD", "#EFFDF0")
shorthelix <- c("#A7000F", "#E401E7","#5E8EFF","#86E9FE","#B2FCE3")
elevenhelix <- c("#673F03", "#891901", "#B50142", "#D506AD", "#AB08FF", "#5731FD", "#4755FF", "#86E9FE", "#B2FCE3", "#D4FFDD", "#EFFDF0")

setwd("C:/Users/shake/OneDrive/Documents/GitHub/SymbulationEmp/stats_scripts")

initial_data <- read.table("munged_zoomed.dat", h=T)
updated_initial_data <- subset(initial_data,update != "update")
final_data = subset(updated_initial_data, update =="100000")


#vert1 <- cbind(subset(final_data, treatment== 0.1), Treatment= "1%")
#vert2 <- cbind(subset(final_data, treatment== 0.2), Treatment= "2%")
#vert3 <- cbind(subset(final_data, treatment== 0.3), Treatment= "3%")
#vert4 <- cbind(subset(final_data, treatment== 0.4), Treatment= "4%")
#vert5 <- cbind(subset(final_data, treatment== 0.5), Treatment= "5%")
#vert6 <- cbind(subset(final_data, treatment== 0.6), Treatment= "6%")
#vert7 <- cbind(subset(final_data, treatment== 0.7), Treatment= "7%")
#vert8 <- cbind(subset(final_data, treatment== 0.8), Treatment= "8%")
#vert9 <- cbind(subset(final_data, treatment== 0.9), Treatment= "9%")

vert11 <- cbind(subset(final_data, treatment== 0.11), Treatment= "11%")
vert12 <- cbind(subset(final_data, treatment== 0.12), Treatment= "12%")
vert13 <- cbind(subset(final_data, treatment== 0.13), Treatment= "13%")
vert14 <- cbind(subset(final_data, treatment== 0.14), Treatment= "14%")
vert15 <- cbind(subset(final_data, treatment== 0.15), Treatment= "15%")
vert16 <- cbind(subset(final_data, treatment== 0.16), Treatment= "16%")
vert17 <- cbind(subset(final_data, treatment== 0.17), Treatment= "17%")
vert18 <- cbind(subset(final_data, treatment== 0.18), Treatment= "18%")
vert19 <- cbind(subset(final_data, treatment== 0.19), Treatment= "19%")

final_vert <- rbind(vert11,vert12,vert13,vert14,vert15,vert16,vert17,vert18,vert19)

ggplot(data=final_vert, aes(x=Treatment, y=as.numeric(donate), colour=partner)) + ylab("Final Mean Interaction Value") + xlab("Vertical Transmission Rate") +theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ theme(axis.text.x = element_text(angle=90, hjust=1)) +geom_boxplot() + ylim(c(-1.0,1.0)) +scale_colour_manual(values=shorthelix)

#outlier.colour=NULL

#ggplot(data=vert_sweep, aes(x=update, y=donate, group=Partner, colour=Partner)) + ylab("Mean Resource Behavior") + xlab("Evolutionary time (in updates)") + stat_summary(aes(color=Partner, fill=Partner),fun.data="mean_cl_boot", geom=c("smooth")) + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill=FALSE) + facet_wrap(~Treatment) + ylim(c(-1,1))

#ggplot(data=vert_sweep, aes(x=update, y=count, group=Partner, colour=Partner)) + ylab("Mean Count") + xlab("Evolutionary time (in updates)") + stat_summary(aes(color=Partner, fill=Partner),fun.data="mean_cl_boot", geom=c("smooth")) + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill=FALSE) + ylim(c(0, 10000)) + facet_wrap(~Treatment)

#gplot(data=surviving, aes(x=host_donate, y=sym_donate, group=treatment, colour=treatment)) + ylab("Symbiont Donation") + xlab("Host Donation") + geom_point() + theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) + guides(fill=FALSE) + ylim(c(0, 1)) + xlim(c(0,1))
