imprimeMSJ <- function(x){
  if(x>0)  
    print("x es mayor que 0")   
  else  
    print("x es menor que 0")   
  invisible(x)
}   

imprimeMSJ(2)
imprimeMSJ(na)
imprimeMSJ(1)
imprime(-5)
imprimeMSJ(-5)
imprimeMSJ(0)
imprimeMSJ(100)


#traceback=imprime la funcion que se esta ejecutando
#debug=marca una funcion para correrla paso a paso
#browser=suspende la ejecucion de una funcion y la pone en depuracion
#trace=te permite insertar codigo para depurar en una funcion en lugares especificos del codigo
#recover=te permite recuperar el comportamiento del error para que puedas mandar a browser la funcion

rmlist=ls
rm(list = ls())

mean(x)
traceback()


lm(y~x)
traceback()


STR(str)
str(str)
str(im)
str(ls)

#jeje

#rnorm=genera variables aleatorias normales con una media desviacion estandar dadas

#dnorm=evalua la funcion de densidad en un punto de una distribucion normal dada una media y desviacion estandar

#pnorm=evalua la funcion de distribucion en un punto de una distribucion normal

#rpois=genera variables aleatorias=genera variables aleatorias Poisson con una tasa dada

#norm....sus usos con letras:
