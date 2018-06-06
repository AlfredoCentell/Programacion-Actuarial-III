#Parte 3

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 1/specdata")

getwd()

d <- "C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 1/specdata"

corr <- function(directorio = d, horizonte){
  
casoscompletos <- c()

v <- c()

for(i in 1:322){
  
a = i
 
if (a <= 9){ 
   
 b= paste("00",a,sep="")
 
} else if (a <= 99 ){
  
  b= paste("0",a,sep="")
  
}  else { 
  
    b = a
}
  nombre = paste(b,".csv",sep = "")
  
  tabla <- na.omit(read.csv(file=nombre))
  
  suma <- sum(!is.na(tabla$sulfate))

if (suma > horizonte){
    
  x1<- as.vector(tabla[,2])
  x2<- as.vector(tabla[,3])
  correlacion<- cor(x1,x2)
  v <- c(correlacion,v)
    
  }
  
}

if(length(v) == 0){
    
    v <- vector(mode="numeric", length=0)
}

  print(v)
  
}

corr(horizonte = 0)
