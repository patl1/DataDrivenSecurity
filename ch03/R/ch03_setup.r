setwd("~/../DataDrivenSecurity/ch03")

# make sure necessary packages are installed
pkgs <- c("ggplot2", "scales", "maptools", "sp", "maps", "grid", "car")

new.pkgs <- pkgs[!(pkgs %in% installed.packages())]

if (length(new.pkgs)) {
  install.packages(new.pkgs)
}