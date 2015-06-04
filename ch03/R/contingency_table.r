# create a contingency table of risk vs reliability (for all sources)

rr.tab <- xtabs(~Risk+Reliability, data=av)
ftable(rr.tab)    # print the table

library(lattice)
# cast the table into a data frame
rr.df <- data.frame(table(av$Risk, av$Reliability))
colnames(rr.df) <- c("Risk", "Reliability", "Freq")

# make the chart
print(levelplot(Freq~Risk*Reliability, data=rr.df, main="Risk ~ Reliability",
          ylab="Reliability", xlab="Risk", shrink=c(0.5,1),
          col.regions=colorRampPalette(c("#F5F5F5", "#01665E"))(20)))