read.table

#lectura y escritura de datos

#creo el objeto
y <- data.frame(a=1,b="a")
#estudio la manera en que se guardara 
dput(y)
#lo guardo en mi disco duro
dput(y,file="y.R")
#genero un nuevo objeto a partir de la info guardada
y2 <- dget(file="y.R")



#tarea almacenar en tu disco duro la base de datos #mtcars en un archivo "Carros.r2 y posteriormente 
#guardarlo en un data frame que se llame 
#Carros(TUNOMBRE) CarrosAlfredo