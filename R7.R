#Funciones

suma2 <- function(x,y){
     x + y  
}  

suma(1:3) #4

mayor10 <- function(x){
       seleccionados <- x > 10  
       x[seleccionados]       
}       


mayor10(1:20)


mayor <- function(x,n=10){
     seleccionados <- x > n 
    x(seleccionados)  
}    


mayor(1:20)

mayor(1:20,15)


mayor(n=15,x=1:20)

promedioCol <- function(x,quitarNA=TRUE) {
  nc <- ncol(x)
 medias <- vector("numeric",nc)
    for(i in 1:nc) {
    medias[i] <- mean(x[,i],na.rm = quitarNA)
}
   medias
}


x <- matrix(1:100,20,5)

promedioCol(x)












