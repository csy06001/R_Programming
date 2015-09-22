#Coursera R Programming Assignment 1 - part 2
#This code has been tested with the Coursera example output from this function
#and gets an A+
idcount = 0
mtable <- data.frame()


complete <- function(dir,id) {
  setwd(paste0("~/Desktop/RProgramming/",dir))
  for(i in id) {
    if(i<10){
      ntable <- read.csv(paste0("00",i,".csv"))
    }
    else if(i>=10 & i<100) {
      ntable <- read.csv(paste0("0",i,".csv")) 
    }
    else if(i>100) {
      ntable <- read.csv(paste0(i,".csv"))
    }
    nobs = 0
    for(j in 1:nrow(ntable)) {
      if(!is.na(ntable[j,2]) & !is.na(ntable[j,3])) {
        nobs = nobs + 1
      }
    }
    idcount = idcount+1
    mtable[idcount,1] <- i
    mtable[idcount,2] <- nobs
  }
  colnames(mtable) <- c("id","nobs")
  mtable
#print(mtable)
}