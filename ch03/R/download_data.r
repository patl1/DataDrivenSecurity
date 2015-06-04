
# note: this URL is broken.  Google the information for the correct URL
avURL <- "http://datadrivensecurity.info/book/ch03/data/reputation.data"

# this assumes the working directory is "ch03"
avRep <- "data/reputation.data"

if(file.access(avRep)) {
  download.file(avURL, avRep)
} else {
  print("File already downloaded.")
}

