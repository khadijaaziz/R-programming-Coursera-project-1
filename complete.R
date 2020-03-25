complete <- function(directory, id=1:332){
  
  df <- data.frame(id=numeric(0), obs=numeric(0))
  
  for (i in id) {
    
    data <- read.csv(paste0(directory,"/",sprintf("%03d", i),".csv"))
    obs <- nrow(na.omit(data))
    df <- rbind(df,data.frame(i,obs))
    
  }
  df
  
}

