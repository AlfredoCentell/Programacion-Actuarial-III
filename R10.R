
noise <- function(n,mean,sd){
   rnorm(n.mean,sd)
}


str(tapply)
function(X,INDEX,FUN = NULL,...,simplify=TRUE)

#X es un vector
#INDEX es un factor o una lista de factores
#FUN es una funcion a aplicar
#... otros argumentos a pasar a FUN
#simplify se debe simplificar el resultado
  

x <- c(rnorm(10),runif(10),rnorm(10))

f <- gl(3,10)

print(f)




tapply(x,f,mean)

tapply(x,f,mean,simplify = F)


str(split)
function(x,f,drop= FALSE,...)
  
library(datasets)
head(airquality)














