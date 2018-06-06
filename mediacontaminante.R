#Parte 1

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 1/specdata")

getwd()

mediacontaminante <- function(directorio, contaminante, id){
  
n <- paste("Monitor", substr(list.files()[1],start = 1,stop = 3))

c <- read.csv(list.files()[1]) [contaminante] 

a <- as.matrix(mean(c[!is.na(c)])) 

rownames(a)[1] <- n
  
for (i in 2:332){
    
    n <- paste("Monitor", substr(list.files()[i],start = 1,stop = 3))
    
    c <- read.csv(list.files()[i]) [contaminante]
    
    b <- as.matrix(mean(c[!is.na(c)]))
    
if (!is.nan(b) == TRUE){
      
    rownames(b) [1] <- n
      
    a <- rbind(a, b) 
      
} else {
      
    b <- paste("Ningun valor de", contaminante, "encontrado")
      
    b <- as.matrix(b)
      
    rownames(b)[1] <- n
      
    a <- rbind(a, b)
      
}
    
}
  
  a <- a[id,]
  
  a <- as.matrix(a)
  
  colnames(a) <- contaminante
  
  a
  
} 

x <- "C:/Users/alfre/Documents/GitHub/Software Actuarial III/Caso 1/specdata"

y <- "sulfate"

z <- c(2,5,112) 

mediacontaminante(x,y,z)
