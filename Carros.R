#Tarea almacenar en tu disco duro la base de datos
#mtcars en un archivo "Carros.R" y posteriormente
#guardarlo en un data frame nuevo que se llame
#Carros(TUNOMBRE) CarrosNacho

# Lectura y escritura de datos
# dput y dget
# 1. Creo el objeto
#y <- data.frame(a=1,b="a")
# 2. Estudio la manera en que se guardará
#dput(y)
# 3. Lo guardo en mi disco duro
#dput(y, file="~/GitHub/SoftwareActuarial3/y.R")
# 4. Genero un nuevo objeto a partir de la info guardada
#y2 <- dget(file="~/GitHub/SoftwareActuarial3/y.R")


mtcars()

print(mtcars)

CarrosAlfredo <- data.frame(mtcars)

CarrosAlfredo

dput(CarrosAlfredo)

dput(CarrosAlfredo,file ="C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/CarrosAlfredo.R")

CarrosAlfredo2 <- dget(file ="C:/Users/alfre/OneDrive/Documentos/GitHub/Software Actuarial III/CarrosAlfredo.R" )

CarrosAlfredo2
