

### exemplo com dados

soma.x<-matrix(NA,100,10)


# This will create several possible paths that each radom variable can go.#

for(i in 1:10){

 for (j in 1:100){
   x1<- sample(1:6, 1)
   x2<- sample(1:6, 1)
   x3<- sample(1:6, 1)
   x4<- sample(1:6, 1)
   x5<- sample(1:6, 1)
   x6<- sample(1:6, 1)
   
soma.x[j,i]<-x1+x2+x3+x4+x5+x6
  
}
}

plot(soma.x[1,],type="l",ylim=c(6,36))
for (i in 1:100){
  lines(soma.x[i,])
}




## now lets fix  ##
soma.x<-matrix(NA,100,50)

for(i in 1:50){
    for (j in 1:100){
    x1<- sample(1:6, 1)
    x2<- sample(1:6, 1)
    x3<- sample(1:6, 1)
    x4<- sample(1:6, 1)
    x5<- sample(1:6, 1)
    x6<- sample(1:6, 1)
    soma.x[j,i]<-x1+x2+x3+x4+x5+x6
    }
}



soma.x[,1:5]<-soma.x[,1:5]/2.1
soma.x[,6:10]<-soma.x[,6:10]/2
soma.x[,11:15]<-soma.x[,11:15]/1.6
soma.x[,16:20]<-soma.x[,16:20]/1.2
soma.x[,21:25]<-soma.x[,21:25]*1.1
soma.x[,26:30]<-soma.x[,26:30]*1.15
soma.x[,31:35]<-soma.x[,31:35]*1.2
soma.x[,36:40]<-soma.x[,36:40]*1.25
soma.x[,41:45]<-soma.x[,41:45]*1.3
soma.x[,46:50]<-soma.x[,46:50]*1.3

plot(soma.x[1,], type = "n", ylab = "Soma", xlab = " ", cex = 1.5, 
     ylim = c(1, 45), lwd = 1, pch = 5, axes = T, main = "")
for (i in 1:50){
  lines(soma.x[i,])
}




### Making the graph


layout(matrix(c(1,1,2,3), 2, 2, byrow = TRUE),widths = lcm(15), heights = lcm(8))

par(cex.main = 1.5, mar = c(2, 5, 2, 2) , mgp = c(3.5, 1, 0), cex.lab = 1.5, 
    font.lab = 2, cex.axis = 1.3, bty = "n", las = 1)
plot(soma.x[1,], type = "l", ylab = "Soma", xlab = " ", cex = 1.5, 
     ylim = c(6, 36), lwd = 1, pch = 5, axes = T, main = "Processo Estoc?stico ")
axis(1, at = 1, labels = "T=1")
text(1, soma.x[1,1], "28", adj = 2, cex = 1,pos=3)
text(2, soma.x[1,2], "19", adj = 2, cex = 1,pos=3)
text(3, soma.x[1,3], "12", adj = 2, cex = 1,pos=3)
text(4, soma.x[1,4], "24", adj = 2, cex = 1,pos=3)
text(5, soma.x[1,5], "20", adj = 2, cex = 1,pos=3)
text(6, soma.x[1,6], "18", adj = 2, cex = 1,pos=3)
text(7, soma.x[1,7], "27", adj = 2, cex = 1,pos=3)
text(8, soma.x[1,8], "24", adj = 2, cex = 1,pos=3)
text(9, soma.x[1,9], "21", adj = 2, cex = 1,pos=3)
text(10, soma.x[1,10], "18", adj = 2, cex = 1,pos=3)

plot(soma.x[1,], type = "n", ylab = "Soma", xlab = " ", cex = 1.5, 
     ylim = c(6, 36), lwd = 1, pch = 5, axes = T, main = "")

for (i in 1:50){
  lines(soma.x[i,])
}
axis(1, at = 1, labels = "T=1")
par(cex.main = 1.5, mar = c(2, 0, 2, 3) , mgp = c(3.5, 1, 0), cex.lab = 1.5, 
    font.lab = 2, cex.axis = 1.3, bty = "n", las =0)

h.islands <- hist(soma.x[1:50,],plot = FALSE)
barplot(h.islands$counts, horiz=TRUE) 

