assets.df <- data.frame(
  name=c("danube", "gander", "ganges", "mekong", "orinoco"),
  os=c("W2K8", "RHEL5", "W2K8", "RHEL5", "RHEL5"),
  highvulns=c(1,0,2,0,0))

str(assets.df)

head(assets.df)

# show the "os" slice of the data fram
head(assets.df$os)

# add a new column
assets.df$ip <- c("192.168.1.5", "10.2.7.5", "192.168.1.7", "10.2.7.6", "10.2.7.7")

# extract only nodes with high vulnerability
head(assets.df[assets.df$highvulns>1,])

# create a "zones" column based on IP prefix
assets.df$zones <- ifelse(grepl("^192", assets.df$ip), "ZOne1", "Zone2")

# final look at the data frame
head(assets.df)