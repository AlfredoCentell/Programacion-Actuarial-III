#Parte 2

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 1/specdata")

getwd()

completos <- function(directorio, id){
 
  name <- paste("Monitor", substr(list.files()[1],start = 1,stop = 3))
  a <- read.csv(list.files()[1])                                      # monitor 1
  a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate))                      # casos completos
  a <- sum(a) #nobs
  nobs <- data.frame(matrix(c(name, a), nrow = 1))                    # se vuelve dataframe
  
for (i in 2:332){
    
  name <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
  a <- read.csv(list.files()[i])                                        
  a <- (!is.na(a$sulfate)) & (!is.na(a$nitrate))                         
  a <- sum(a)
  nobs1 <- data.frame(matrix(c(name, a), nrow = 1))
    
  nobs <- rbind(nobs, nobs1)                                        # unión de data frames
    
}
  
  nobs <- nobs[id, ]
  colnames(nobs)[1] = "id"
  colnames(nobs)[2] = "nobs"
  nobs
  
} 

x <- "C:/Users/alfre/Documents/GitHub/Software Actuarial III/Caso 1/specdata"

y <-  1:10

completos(x,y)
