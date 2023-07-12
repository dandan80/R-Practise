library("polynom")
require("PolynomF")

#define and assign value to x and y 
xk <- c(pi, 6.678, 3*pi, 12.961, 5*pi, 19.244, 7*pi)
yk <- c(0, -1.921, 0, 3.584, 0, -6.718, 0)

#define the function MyIntCal to generate lagrange format with parameter
MyIntCal <- function(x, xk, yk){
  num <- length(xk)
  lagrangeFormat <- 0
  for (i in 1:num){
    Li <- 1
    for (j in 1:num){
      if (i != j)
        Li<-Li*(x-xk[j])/(xk[i] - xk[j])
    }
    lagrangeFormat <- Li*yk[i]+ lagrangeFormat
  }
  return (lagrangeFormat)
}

#The #DP is 7, the degree of the interpolating function is 6
degree <- length(xk)-1
cat("The degree of the interpolating function is: ",degree)

#lagrange function used to generate L1-L7
lagrange <- function(ix, x, xk){
  n <- length(xk)
  for(i  in 1:ix){
    Li <- 1
    for (j in 1:n){
      if(i != j){
        Li <- Li*(x-xk[j])/(xk[i]-xk[j])
      }
    }
  }
  return (Li)
}

#call lagrange function to create L1-L7
x <- polynom()
L1 <- lagrange(1,x,xk)
L1
L2 <- lagrange(2,x,xk)
L2
L3 <- lagrange(3,x,xk)
L3
L4 <- lagrange(4,x,xk)
L4
L5 <- lagrange(5,x,xk)
L5
L6 <- lagrange(6,x,xk)
L6
L7 <- lagrange(7,x,xk)
L7

#Create a 4x2 figure and plot each of polynomials in it 
#call the pdf command to start to plot
pdf("E:/semester 4/Math/Lab/Assignment1/MyIntFig.pdf")
#difine the size 4*2
par(mfrow = c(4,2))
plot(L1)
plot(L2)
plot(L3)
plot(L4)
plot(L5)
plot(L6)
plot(L7)
#add the final interpolating function in this pdf file
plot(MyIntCal(x,xk,yk))
#run dev.off() to create the file
dev.off()

#use the built in function poly.calc() to find the interpolating function
poly_calc(xk,yk)

#pf_x return the interpolating function
pf_x <- function(x){
  return(-43.29023 + 33.94858*x - 9.708313*x^2 + 1.287285*x^3 - 0.08462909*x^4 + 0.002663928*x^5 - 3.189059e-05*x^6 )
}

#find the value of f(15)
MyIntCal(15,xk,yk)
pf_x(15)

#find the value of f(24)
MyIntCal(24,xk,yk)
pf_x(24)