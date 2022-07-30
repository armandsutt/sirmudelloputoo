# See on funktsioon, mis genereerib tõenäosusi ja nakatunude arve,
# kasutades rbinom funktsiooni

n_of_inf2 <- function(s,x,xd,r,c,rho){
  N = sum(s,x,xd,r)
  
  P_A=1-(1-rho*xd/N)^c
  
  P_B=1-(1-rho/N)^(xd*c)
  
  P_nak = P_A + P_B - P_A*P_B
  
  return(rbinom(1,s,P_nak))
}

# n_of_inf2 <- function(s,x,xd,r,c,rho){
#   N = sum(s,x,xd,r)
#   
#   P_A=xd/N
#   
#   P_B=(1-(1-1/N)^xd)
#   
#   P1_nak = rho*P_A + rho*P_B - rho*rho*P_A*P_B
#   
#   P2_nak = 1-P1_nak
#   
#   P_nak = (1-P2_nak^c)
#   
#   return(rbinom(1,s,P_nak))
# }

n = 1000

X = 4

Xd=0

X. = X + Xd

S = n-X

R = n-X-S

number_added = 0

number_taken = 0

päev=0

indeks=0

df2 <- data.frame(päev,S,X.,X,Xd,R,number_added,number_taken,indeks)

df2 <- df2[-1,]

for(i in 1:1000){
  ti <- 1
  n = 10000
  
  X = 4
  
  Xd = 0
  
  X. = X+Xd
  
  S = n-X
  
  R = n-X-S
  
  c=2
  
  Tx1 = 4
  
  Tx2 = 2
  
  rho=0.3
  
  number_added = 0
  
  number_taken = 0
  
  world <- c(S,X.,X,Xd,R)
  
  indeks = i
  
  päev=0
  plum = T
  how_set<-c(X)
  päev = 0
  väärtused <- c(päev,S,X.,X,Xd,R,number_added,number_taken,indeks)
  df2[nrow(df2)+1,]=väärtused
  if(i%%5==0){
    print(i)
  }
  while(plum){
    s<-world[1]
    x<-world[3]
    xd <- world[4]
    r<-world[5]
    how_many_added <- round(ifelse(n_of_inf(s,x,xd,r,c,rho)<s,n_of_inf(s,x,xd,r,c,rho),s))
    päev=päev + 1
    how_set[length(how_set)+1] <- how_many_added
    if(world[1]+world[5]==n){
      plum = F
      #print(paste("päev",päev))
      #print(c("S ", "X ", "R "))
      #print(world)
    }
    else{
      #print(paste("päev",päev))
      #print(c("S ", "X ", "R "))
      #print(world)
      world[3] = world[3]+how_many_added
      world[1] = world[1]-how_many_added
      if(Tx2<=ti){
        number_taken <- 2
        world[3] = world[3]-how_set[ti-abs(Tx2-Tx1)+1]
        world[4] = world[4]+how_set[ti-abs(Tx2-Tx1)+1]
        if(Tx1<=ti){
          world[4] = world[4]-how_set[ti-Tx1+1]
          world[5] = world[5]+how_set[ti-Tx1+1]
        }
      }
      ti = ti + 1
      number_added <- how_many_added
      s1 <- world[1]
      x.1 <- world[3]+world[4]
      x1 <- world[3]
      xd1 <- world[4]
      r1 <- world[5]
      väärtused <- c(päev,s1,x.1,x1,xd1,r1,number_added,number_taken,indeks)
      df2[nrow(df2)+1,]=väärtused
    }
  }
}

