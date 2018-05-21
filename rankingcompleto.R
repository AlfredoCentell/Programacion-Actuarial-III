getwd()

setwd("C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/Caso 2")

rankingcompleto <- function(resultado, num = "mejor") {
  
data <- read.csv("outcome-of-care-measures.csv")
  
  if (!((resultado == "ataque") | (resultado == "falla")
        | (resultado == "neumonia"))) {
    stop ("resultado invalido")
  }

# Los numeros(11,17 y 23) representan las columnas donde se encuentran los datos
# de ese caso
# Para cada estado, encuentra el hospital con la posición cada.

  col <- if (resultado == "ataque") {
    11 
  } else if (resultado == "falla") {
    17 
  } else {
    23 
  }
  
data[, col] <- suppressWarnings(as.numeric(levels(data[, col])[data[, col]]))

data[, 2] <- as.character(data[, 2])
  
resultadoFin <- vector() #Vector vacío 

estados <- levels(data[, 7])
  
for(i in 1:length(estados)) {
  DataEstado <- data[grep(estados[i], data$State), ]
  Ordenar_Data <- DataEstado[order(DataEstado[, col], DataEstado[, 2], na.last = NA), ]
    
   hospital <- if(num == "mejor") {
  Ordenar_Data[1, 2]
  } else if(num == "peor") {
   Ordenar_Data[nrow(Ordenar_Data), 2]
  } else{
      Ordenar_Data[num, 2]
 }
    
  resultadoFin <- append(resultadoFin, c(hospital, estados[i])) 
    
  # append agrega elementos al vector que teniamos vacio al inincio
  
  }
  
  # Regresa un data frame con el nombre del hospital y la abreviatura
  # del nombre del estado al que pertenece.
  
  resultadoFin <- as.data.frame(matrix(resultadoFin, length(estados), 2, byrow = TRUE))
  
  colnames(resultadoFin) <- c("hospital", "estado")
  
  rownames(resultadoFin) <- estados
  
  resultadoFin
  
}

head(rankingcompleto("ataque",20),10)

tail(rankingcompleto("neumonia","peor"),3)      # para correr selecciono todo y asi jala
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
}
