pollutantmean <- function(directory, pollutant,id=1:332){
  values <- numeric()
  for (i in id) {
    
    data <- read.csv(paste0(directory,"/",sprintf("%03d", i),".csv"))
    values <- c(values,data[[pollutant]])
    
  }
  mean(values,na.rm = T)
  
}


