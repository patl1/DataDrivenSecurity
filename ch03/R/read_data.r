setwd("~/../DataDrivenSecurity/ch03")

avRep = "data/reputation.data"

# read in the file
av <- read.csv(avRep, sep="#", header=FALSE)

# assign readable column names since there isn't a header
colnames(av) <- c("IP", "Reliability", "Risk", "Type", "Country", "Locale", "Coords", "x")

# get an overview of the data frame
str(av)

# a quick look at the data
head(av)