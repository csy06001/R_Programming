#CORRECT! When tested with the Coursera tests/answers

dir <- "~/Desktop/RProgramming/"
mfile <- data.frame()
pollutantmean <- function(d, pollutant="sulfate", id=1:332) {
  setwd(paste0(dir,d))
  for(i in id) {
    if(i<10) {
      nfile <- read.csv(paste0("00",i,".csv"))      
    }
    else if(i>=10 & i<100) {
      nfile <- read.csv(paste0("0",i,".csv"))
    }
    else if(i>=100) {
      nfile <- read.csv(paste0(i,".csv"))
    }
    mfile <- rbind(mfile, nfile)
  }
    if(pollutant=="sulfate"){
      avg = mean(mfile[,2],na.rm=TRUE)
      avg
    }
    else if(pollutant=="nitrate"){
      avg = mean(mfile[,3], na.rm=TRUE)
      avg
    }
  else if(pollutant=="test") {
    avg = mean(mfile[,4], na.rm=TRUE)
    avg
  }
  }