av$simpletype <- as.character(av$Type)

# reassign everything with a semicolon to be of type "Multiples"
av$simpletype[grep(';', av$simpletype)] <- "Multiples"

# turn it back into a factor
av$simpletype <- factor(av$simpletype)

rrt.df <- data.frame(table(av$Risk, av$Reliability, av$simpletype))
colnames(rrt.df) <- c("Risk", "Reliability", "simpletype", "Freq")

plot <- levelplot(Freq ~ Reliability*Risk|simpletype, data=rrt.df,
                  main="Risk ~ Reliability|Type", ylab="Risk",
                  xlab="Reliability", shrink=c(0.5,1),
                  col.regions=colorRampPalette(c("#F5F5F5", "#01665E"))(20))

print(plot)

# now do it with no "scanning hosts"

rrt.df <- subset(rrt.df, simpletype != "Scanning Host")
plot <- levelplot(Freq ~ Reliability*Risk|simpletype, data=rrt.df,
                  main="Risk ~ Reliability|Type", ylab="Risk",
                  xlab="Reliability", shrink=c(0.5,1),
                  col.regions=colorRampPalette(c("#F5F5F5", "#01665E"))(20))

print(plot)

# now do it with no "malware distribution" or "malware domains"
rrt.df <- subset(rrt.df, 
                 !(simpletype %in% c("Malware distribution", "Malware Domain")))
sprintf("Count: %d; Percent: %2.1f%%", sum(rrt.df$Freq), 
        100*sum(rrt.df$Freq)/nrow(av))
plot <- levelplot(Freq ~ Reliability*Risk|simpletype, data=rrt.df,
                  main="Risk ~ Reliability|Type", ylab="Risk",
                  xlab="Reliability", shrink=c(0.5,1),
                  col.regions=colorRampPalette(c("#F5F5F5", "#01665E"))(20))
print(plot)