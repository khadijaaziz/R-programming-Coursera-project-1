corr <- function(directory, threshold=0){
  res <- numeric(0)
  
  complete_obs <- complete(directory)
  complete_obs <- complete_obs[complete_obs$obs>=threshold, ]
  
  if(nrow(complete_obs)>0){
    for (j in complete_obs$i) {
      data <- read.csv(paste0(directory,"/",sprintf("%03d", j),".csv"))
      data <- data[(!is.na(data$sulfate)), ]
      data <- data[(!is.na(data$nitrate)), ]
      sulfate <- data["sulfate"]
      nitrate <- data["nitrate"]
      res <- c(res, cor(sulfate, nitrate))
      
    }
  }
  res
}



