

generate_contacts <- function(n, c){
  contact_map <- rep(1:n,each=c)
  added_contacts <- round(runif(n*c)*n,0)%%n+1
  contact_list <- matrix(c(contact_map,added_contacts),ncol=2,byrow=F)
  return(contact_list)
}


#######

# plum = TRUE
# 
# n <- 50
# 
# X <- 4
# 
# Xd = 0
# 
# X. = X+Xd
# 
# S <- n - X
# 
# R <- n-S-X
# 
# rho <- 0.3
# 
# #world <- generate_world(n,nsus)
# 
# #hetkel teen TÄPSE maailma
# 
# #n = 100
# 
# w <- c(rep("s",S),rep("x",X))
# 
# Tx1 = 4
# 
# Tx2 = 2
# 
# timer <- ifelse(w=="x", Tx1, -1)
# 
# #vajaliktabel1 <- rep(NA,1000)
# 
# #w <- c(rep("s",94),rep("x",4),rep("r",2))
# 
# c = 2
# 
# päev = 0
# 
# tuli_juurde <- 0
# 
# tuli_juurde_miinus_läheb_ära <- 0
# 
# pidi_tulema_juurde <- 0
# 
# pidi_tulema_juurde_plus_läheb_ära <-0
# 
# läheb_ära <- 0
# 
# indeks = 0
# 
# df <- data.frame(päev,S,X.,X,Xd,R,indeks)
# 
# df <- df[-1,]
# 
# for(i in 1:1000){
#   plum = T
#   
#   n <- 10000
#   
#   X <- 4
#   
#   S <- n - X
#   
#   R <- n-S-X
#   
#   Xd = n-S-X-R
#   
#   X. = Xd+X
#   
#   rho <- 0.3
#   
#   #world <- generate_world(n,nsus)
#   
#   #hetkel teen TÄPSE maailma
#   
#   #n = 100
#   
#   w <- c(rep("s",S),rep("x",X))
#   
#   Tx1 = 4
#   Tx2 = 2
#   
#   timer <- ifelse(w=="x", Tx1, -1)
#   
#   if(Tx1==Tx2){
#     w[w=="x"]="xd"
#   }
#   
#   #vajaliktabel1 <- rep(NA,1000)
#   
#   #w <- c(rep("s",94),rep("x",4),rep("r",2))
#   
#   c = 2
#   
#   päev = 0
#   
#   
#   indeks = i
#   
#   väärtused <- c(päev,S,X.,X,Xd,R,indeks)
#   
#   df[nrow(df)+1,] <- väärtused
#   if(i%%50==0){
#     print(i)
#   }
#   while(plum){
#     päev = päev + 1
#     
#     contacts <- generate_contacts(n,c)
#     
#     timer[w=="x"] = timer[w=="x"] - 1
#     
#     timer[w=="xd"] = timer[w=="xd"] - 1    
#     
#     infect_status <- matrix(c(w[contacts[,1]],w[contacts[,2]]),ncol=2,byrow=F)
#     
#     situation <- (infect_status[,1]=="s"&infect_status[,2]=="xd")|
#       (infect_status[,2]=="s"&infect_status[,1]=="xd")
#     
#     prbs <- runif(n)
#     
#     infection_coordinates <- contacts[(situation)&(prbs<(rho))]
#     
#     w[infection_coordinates] <- "x"
#     
#     timer[(w=="x")&(timer==-1)] = Tx1
#     
#     w[timer==0] = "r"
#     
#     w = ifelse(abs(timer-Tx1)==Tx2,"xd",w)
#     
#     tabel <- table(factor(w,levels=c("s","x","xd","r")))
#     
#     s1 = as.numeric(tabel[1])
#     
#     x1 = as.numeric(tabel[2])
#     
#     xd1 = as.numeric(tabel[3])
#     
#     r1 = as.numeric(tabel[4])
#     
#     X. = n-(s1+r1)
#     
#     väärtused <- c(päev,s1,X.,x1,xd1,r1,indeks)
#     
#     df[nrow(df)+1,] = väärtused
#     
#     # if(sum(world=="r")==n){
#     #   print(table(factor(world,levels=c("s","x","r"))))
#     #   plum = F
#     # }
#     if(sum(w=="r",na.rm=T)+sum(w=="s",na.rm=T)==n){
#       #print(paste("päev",päev))
#       #print(table(factor(w,levels=c("s","x","r"))))
#       plum = F
#     }
#   }
# }


plum = TRUE

n <- 50

X <- 4

Xd = 0

X. = X+Xd

S <- n - X

R <- n-S-X

rho <- 0.3

#world <- generate_world(n,nsus)

#hetkel teen TÄPSE maailma

#n = 100

w <- c(rep("s",S),rep("x",X))

Tx1 = 4

Tx2 = 2

timer <- ifelse(w=="x", Tx1, -1)

#vajaliktabel1 <- rep(NA,1000)

#w <- c(rep("s",94),rep("x",4),rep("r",2))

c = 2

päev = 0

tuli_juurde <- 0

tuli_juurde_miinus_läheb_ära <- 0

pidi_tulema_juurde <- 0

pidi_tulema_juurde_plus_läheb_ära <-0

läheb_ära <- 0

indeks = 0

df <- data.frame(päev,S,X.,X,Xd,R,indeks)

df <- df[-1,]


for(i in 1:1000){
  plum = T
  
  n <- 10000
  
  X <- 4
  
  S <- n - X
  
  R <- n-S-X
  
  Xd = 0
  
  X. = Xd+X
  
  rho <- 0.3
  
  #world <- generate_world(n,nsus)
  
  #hetkel teen TÄPSE maailma
  
  #n = 100
  
  w <- c(rep("s",S),rep("x",X))
  
  Tx1 = 4
  Tx2 = 2
  
  timer <- ifelse(w=="x", Tx1, -1)
  
  if(Tx1==Tx2){
    w[w=="x"]="xd"
  }
  
  #vajaliktabel1 <- rep(NA,1000)
  
  #w <- c(rep("s",94),rep("x",4),rep("r",2))
  
  c = 2
  
  päev = 0
  
  
  indeks = i
  
  väärtused <- c(päev,S,X.,X,Xd,R,indeks)
  
  df[nrow(df)+1,] <- väärtused
  
  print(i)
  
  while(plum){
    päev = päev + 1
    
    contacts <- generate_contacts(n,c)
    
    timer[w=="x"] = timer[w=="x"] - 1
    
    timer[w=="xd"] = timer[w=="xd"] - 1    
    
    infect_status <- matrix(c(w[contacts[,1]],w[contacts[,2]]),ncol=2,byrow=F)
    
    situation <- (infect_status[,1]=="s"&infect_status[,2]=="xd")|
      (infect_status[,2]=="s"&infect_status[,1]=="xd")
    
    prbs <- runif(n)
    
    infection_coordinates <- contacts[(situation)&(prbs<(rho))]
    
    w[infection_coordinates] <- "x"
    
    timer[(w=="x")&(timer==-1)] = Tx1
    
    w[timer==0] = "r"
    
    w[(timer-Tx2<=0)&(w=="x")] = "xd"
    
    tabel <- table(factor(w,levels=c("s","x","xd","r")))
    
    s1 = as.numeric(tabel[1])
    
    x1 = as.numeric(tabel[2])
    
    xd1 = as.numeric(tabel[3])
    
    r1 = as.numeric(tabel[4])
    
    X. = n-(s1+r1)
    
    väärtused <- c(päev,s1,X.,x1,xd1,r1,indeks)
    
    df[nrow(df)+1,] = väärtused
    
    # if(sum(world=="r")==n){
    #   print(table(factor(world,levels=c("s","x","r"))))
    #   plum = F
    # }
    if(sum(w=="r",na.rm=T)+sum(w=="s",na.rm=T)==n){
      #print(paste("päev",päev))
      #print(table(factor(w,levels=c("s","x","r"))))
      plum = F
    }
  }
}
