

medicont <- function(directorio, contaminante, id){
  
  setwd(directorio)
  name <- paste("Monitor", substr(list.files()[1],start = 1,stop = 3))
  c <- read.csv(list.files()[1])[contaminante]
  mc <- as.matrix(mean(c[!is.na(c)])) 
  rownames(mc)[1] <- name
  
  for (i in 2:332){
     name <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
    c <- read.csv(list.files()[i])[contaminante]
    mc2 <- as.matrix(mean(c[!is.na(c)]))
    
    if (!is.nan(mc2) == TRUE){
      rownames(mc2)[1] <- name
      mc <- rbind(mc, mc2)
    }else{
      mc2 <- paste("Any value of", contaminante, "registered")
      mc2 <- as.matrix(mc2)
      rownames(mc2)[1] <- name
      mc <- rbind(mc, mc2)
      
    }
  }
  
  mc <- mc[id,]
  mc <- as.matrix(mc)
  colnames(mc) <- contaminante
  mc
} 

x <- "C:\Users\alfre\OneDrive\Documentos\GitHub\Software Actuarial III"
y <- "sulfate"
z <- 1:10 
medicont(x,y,z)
