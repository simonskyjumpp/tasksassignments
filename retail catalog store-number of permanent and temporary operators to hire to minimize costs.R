install.packages("lpSolve")
library(lpSolve)
##MIN Z = 81X1 + 50X2
f.obj <- c(81,50)
##CONSTRAINTS
#76X1+53X2 >= 600
#X1+X2 <= 10
#1.3X1+4.1X2 <= 24
f.con <- matrix(c(76,53,
                  1,1,
                  1.3,4.1),nrow = 3,byrow = TRUE)
f.dir <- c(">=","<=","<=")
f.rhs <- c(600,10,24)
lp("min",f.obj,f.con,f.dir,f.rhs,int.vec = 1:3)
lp("min",f.obj,f.con,f.dir,f.rhs,int.vec = 1:3)$solution
