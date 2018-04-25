
correlacion <- function(directory, horizonte){
  
setwd(directory)
  if(horizonte == 0){
    } else {
    total <- Inf - Inf
    for(i in 1:332){
       name <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
      a <- read.csv(list.files()[i])
      a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate))  
       if(h>=horizonte && is.nan(total)){
        s <- read.csv(list.files()[i])[a, ]
        n <- read.csv(list.files()[i])[a, ]
        a <- cor(s,n) 
        names(a)[1] = name
        total <- a
         } else if(h>=horizonte){
        s <- read.csv(list.files()[i])[a, ][ ,"sulfate"]
        n <- read.csv(list.files()[i])[a, ][ ,"nitrate"]
        total <- c(total,a)
        names(total)[length(total)] = name
        
      }else{
        
      }
      
    }
    total
  }
  
} 

x <- "C:\Users\alfre\OneDrive\Documentos\GitHub\Software Actuarial III"
y = 0

correlacion(x,y)
