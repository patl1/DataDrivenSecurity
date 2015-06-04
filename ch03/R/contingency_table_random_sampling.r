# Creates a random distribution of risk vs. reliability to 
# check to see if we have something skewing the data

set.seed(1492) # for reliable results

rel <- sample(1:7, 26000, replace=T)
rsk <- sample(1:10, 26000, replace=T)

# cast table into data frame
tmp.df <- data.frame(table(factor(rsk), factor(rel)))
colnames(tmp.df) <- c("Risk", "Reliability", "Freq")

plot <- levelplot(Freq~Reliability*Risk, data=tmp.df, main="Risk ~ Reliability", 
                  ylab="Reliability", xlab="Risk", shrink=c(0.5, 1),
                  col.regions=colorRampPalette(c("#F5F5F5", "#01665E"))(20))

print(plot)