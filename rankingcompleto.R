getwd()

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 2")

rankingcompleto <- function(resultado, num = "mejor") {

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

# Aqui no se revisa el estado porque aplica para todos los estados
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
}
