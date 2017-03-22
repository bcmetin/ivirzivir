library(RCurl)
library(RJSONIO)
setwd("~/Desktop/DS/github/ivirzivir")
nozip <- read.csv("nozipcode_sample.csv")
latlon2zip <- function(lat, lon) {
  url <- sprintf("http://nominatim.openstreetmap.org/reverse?format=json&lat=%f&lon=%f&zoom=18&addressdetails=1", lat, lon)
  res <- fromJSON(url)
  return(res[["address"]][["postcode"]])
}
lat <- nozip[, 3]
lon <- nozip[, 2]


latlon2zip(lat=41.02199, lon=28.94535)
