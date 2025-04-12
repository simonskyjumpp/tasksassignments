install.packages("lpSolve")
library(lpSolve)
##MAX Z = 600X1 + 540X2 + 375X3
F.obj <- c(600,540,375)
##CONSTRAINTS
#X1+X2+X2 = 12
#X1 <= 5
#80X1 + 70X2 + 50X3 <= 750
f.con <- matrix(c(1,1,1,
                 1,0,0,
                 80,70,50),nrow = 3,byrow = TRUE)
f.dir <- c("=","<","<")
f.rhs <- c(12,5,750)
lp("max", F.obj, f.con, f.dir, f.rhs)$solution
# Final value (z)

lp("max", F.obj, f.con, f.dir, f.rhs,int.vec = 1:3)
lp("max", F.obj, f.con, f.dir, f.rhs,int.vec = 1:3)$solution
