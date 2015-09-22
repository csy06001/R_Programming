#Programming Assignment 1, Part 3
#The code is correct! Tested and matches class example output

ntable <- data.frame()
files <-list.files("~/Desktop/RProgramming/specdata")
numberfiles <- length(files)
id <- 1:numberfiles
ctable <- complete(dir="specdata",id)

corr <- function(dir, threshold=0) {
  ttable <- data.frame()
  j=1
  for(i in id) {
    if(i<10){
      ttable <- read.csv(paste0("00",i,".csv"))
    }
    else if(i>=10 & i<100) {
      ttable <- read.csv(paste0("0",i,".csv")) 
    }
    else if(i>100) {
      ttable <- read.csv(paste0(i,".csv"))
    }
    if(ctable[i,2] > threshold) {
      ntable[j,1] <- cor(ttable[,2],ttable[,3],use="complete")
      j=j+1
    }
  }
  ntable
  ntable <- as.vector(t(ntable))
}
