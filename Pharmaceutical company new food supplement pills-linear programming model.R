install.packages("lpSolve")
library(lpSolve)
##MIN Z = 40X1 + 35X2
f.obj <- c(40,35) 
#CONSTRAINTS
#2X1 + 2X2 >= 12
#5X1 + 3X2 >= 15
f.con <- matrix(c(2,2,5,3),nrow = 2,byrow = TRUE)
f.dir <- c(">=",">=")
f.rhs <- c(12,15)
lp("min",f.obj, f.con, f.dir, f.rhs)$solution
# Final value (z)
lp("min", f.obj, f.con, f.dir, f.rhs, compute.sens = TRUE)
