require(ggplot2)
library(forcats)
fullcubeHelix <- c("#673F03", "#7D3002", "#891901", "#A7000F", "#B50142", "#CD0778", "#D506AD", "#E401E7", "#AB08FF","#7B1DFF", "#5731FD","#5E8EFF", "#4755FF" ,"#6FC4FE", "#86E9FE", "#96FFF7", "#B2FCE3", "#BBFFDB", "#D4FFDD", "#EFFDF0")
shorthelix <- c("#A7000F", "#E401E7","#5E8EFF","#86E9FE","#B2FCE3")
elevenhelix <- c("#673F03", "#891901", "#B50142", "#D506AD", "#AB08FF", "#5731FD", "#4755FF", "#86E9FE", "#B2FCE3", "#D4FFDD", "#EFFDF0")

setwd("~/Desktop/SymbulationEmp/VertTransSpa")

initial_data <- read.table("../munged_basic.dat", h=T)
zoom_data <- read.table("../munged_zoom.dat", h=T)

vert0 <- cbind(subset(initial_data, treatment== 0.0), Treatment= "0%")
vert01 <- cbind(subset(zoom_data, treatment== 0.01), Treatment= "1%")
vert02 <- cbind(subset(zoom_data, treatment== 0.02), Treatment= "2%")
vert03 <- cbind(subset(zoom_data, treatment== 0.03), Treatment= "3%")
vert04 <- cbind(subset(zoom_data, treatment== 0.04), Treatment= "4%")
vert05 <- cbind(subset(zoom_data, treatment== 0.05), Treatment= "5%")
vert06 <- cbind(subset(zoom_data, treatment== 0.06), Treatment= "6%")
vert07 <- cbind(subset(zoom_data, treatment== 0.07), Treatment= "7%")
vert08 <- cbind(subset(zoom_data, treatment== 0.08), Treatment= "8%")
vert09 <- cbind(subset(zoom_data, treatment== 0.09), Treatment= "9%")
vert10 <- cbind(subset(zoom_data, treatment== 0.10), Treatment= "10%")

vert_sweep <- rbind(vert01,vert02,vert03,vert04,vert05, vert06, vert07, vert08, vert09, vert10)
vert_sweep <- subset(vert_sweep, update==99900)
#fct_relevel(vert_sweep$Treatment)

ggplot(data=vert_sweep, aes(x=as.factor(treatment), y=donate, color=partner)) + ylab("Final Mean Interaction Value of Host") + xlab("Vertical Transmission Rate") +theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ geom_boxplot() + ylim(c(-1.0,1.0)) +scale_colour_manual(values=shorthelix)

ggplot(data=vert_sweep, aes(x=Treatment, y=sym_val)) + ylab("Final Mean Interaction Value of Symbiont") + xlab("Vertical Transmission Rate") +theme(panel.background = element_rect(fill='white', colour='black')) + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())+ geom_boxplot() + ylim(c(-1.0,1.0)) +scale_colour_manual(values=shorthelix)
