library(ggplot2)

# top 20 countries chart
country.top20 <- names(summary(av$Country))[1:20]

ggcountry <- ggplot(data=subset(av, Country %in% country.top20),
                    aes(x=reorder(Country, Country, length)))
ggcountry <- ggcountry + geom_bar(fill="#000099")
ggcountry <- ggcountry + labs(title="Country Counts", x="Country", y="Count")
ggcountry <- ggcountry + coord_flip()
ggcountry <- ggcountry + theme(panel.grid=element_blank(),
                               panel.background=element_blank())
print(ggcountry)

# Reliability chart
ggrel <- ggplot(data=av, aes(x=Reliability))
ggrel <- ggrel + geom_bar(fill="#000099")
ggrel <- ggrel + scale_x_discrete(limits=seq(max(av$Reliability)))
ggrel <- ggrel + labs(title="'Reliability' Counts", x="Reliability Score", y="Counts")
ggrel <- ggrel + theme(panel.grid=element_blank(), 
                       panel.background=element_blank())
print(ggrel)

# Risk chart
ggrisk <- ggplot(data=av, aes(x=Risk))
ggrisk <- ggrisk + geom_bar(fill="#000099")
ggrisk <- ggrisk + scale_x_discrete(limits=seq(max(av$Risk)))
ggrisk <- ggrisk + labs(title="'Risk' Counts", x="Risk", y="Counts")
ggrisk <- ggrisk + theme(panel.grid=element_blank(), 
                       panel.background=element_blank())
print(ggrisk)