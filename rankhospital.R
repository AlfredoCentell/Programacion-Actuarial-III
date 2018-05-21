getwd()

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 2")

rankhospital <- function(estado, resultado, num = "mejor") { 
 
outcome <- read.csv("outcome-of-care-measures.csv")        
  
# Los numeros(11,17 y 23) representan las columnas donde se encuentran los datos
# de ese caso
  
if (resultado == "ataque"){      
    
  resultado <- 11
    
} else if (resultado == "falla") {
    
  resultado <- 17
    
} else if (resultado == "neumonia"){
    
  resultado <- 23
    
} else {
    
  stop("Resultado invalido")          # si es TRUE la funcion se detiene aqui
}
  
if(is.element(estado,outcome[,7])== FALSE) {  # en la columna 7 vienen los estados
    
  stop("Estado inválido")  
    
}

# split(x,y) ,donde x = que vas a separar, y la  y = el criterio de separacion

# separando nombre del hospital y el caso(resultado),por estado("XX")

tb <- as.data.frame(split(outcome[,c(2,resultado)], outcome[,7])[estado]) # thebest

t <- c(as.numeric(paste(tb[,2])))           # vector de tasas

n <- c(paste(tb[,1]))                       # vector de nombres  

tb <- tb[order(t,n),]       # data frame original pero ya ordenado por tasa
                            # de menor a mayor

qn <-!is.na(c(as.numeric(paste(tb[,2]))))    # quitar-na (suprime los "na")

tb <- tb[qn,]

# Condiciones de "num" y el nombre del hospital solicitado

if ((is.numeric(num)==TRUE)&(num<=nrow(tb)&(num>0))){
  
  as.character(tb[num,1])
  
}  else if (num == "mejor"){
  
  as.character(tb[1,1])
  
} else if (num == "peor"){
  
  as.character(tb[nrow(tb),1])
  
} else {
  
  stop("Rank inválido")
}

}

estado <- "TX"

resultado <- "falla" 

num <- 4 

rankhospital(estado, resultado, num)     # para correr selecciono todo y asi jala
