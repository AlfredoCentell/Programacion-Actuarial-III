
comp <- function(directorio, id){
  
  setwd(directorio)
  name <- paste("Monitor", substr(list.files()[1],start = 1,stop = 3))
  a <- read.csv(list.files()[1]) #monitor i(1)
  a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate)) 
  a <- sum(a) 
  nobs <- data.frame(matrix(c(name, a), nrow = 1)) 
  for (i in 2:332){
    name <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
    a <- read.csv(list.files()[i]) 
    a <- (!is.na(a$sulfate)
    a <- sum(a)
    nobs2 <- data.frame(matrix(c(name, a), nrow = 1))
    
    nobs <- rbind(nobs, nobs2) 
    }
  nobs <- nobs[id, ]
  colnames(nobs)[1] = "id"
  colnames(nobs)[2] = "nobs"
  nobs
  } 
x <- "C:\Users\alfre\OneDrive\Documentos\GitHub\Software Actuarial III"
y = 1:10 #332
comp(x,y)
xx <- c(1:100)

