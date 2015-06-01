library(ggplot2)
set.seed(1492)
test.df <- data.frame(data=rnorm(5000))
ggplot(data=test.df) + geom_histogram(aes(x=data))