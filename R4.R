x <- c("a","b","c","d")
for(i in 1:4){
 print(x[i])  
}

for(i in seq_along(x)){
 print(x[i])  
}  

for(letra in x)
 print(letra)  
}

for(i in 1:4) print(x[i])

x <- matrix(1:6.2,3)
for(i in seq_len(nrow(X))) {
  for(j in saq_len(ncol(x))) {
    print(x[i,j])
  }
}

count <- 0
while(count<10){
  print(count)  
  count <- count + 1  
}  

#ejemplo de while

set.seed(1)
z <- 5 
while(z>=3 && z<=10){
 print(z)  
 moneda <- rbinom(1,1,0.5)  
 if(moneda==1){  #caminata aleatoria
 z <- z +1
 } else {   
  z <- z -1
 }
 contador <- contador +1 
 
}
print("se realizaron");print(contador);print("pasos")

      