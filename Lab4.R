require("PolynomF")

#the first question-solution

#define the original function
f1<- function(x){
  
  return (log(1+x))
}

#define the Maclaurin Series function to display in console
x<-polynom()
f2<- function (x,n){
    paste("term",n," = ",((-1)^(n+1))*(x^n),"/",n)
}

#display the first six term of this series
v<-1:6
for(i in v){
  term = f2(x,i)
  print(term)
}





#The second question-solution

#define the Maclaurin Series function of f(X)
maclaurinF <- function(x,n){
  ms <- 0
  for (i in 1:n){
    ms = ms + ((-1)^(i+1))*(x^i)/i
  }
  return (ms)
}
mac6 <- maclaurinF(x,6)

x <- seq(-1, 1.5, by = 0.1)
f1_value <-f1(x)


# Generate the plot and the curve of f(x) and Maclaurin Series of f(x)

plot(x, f1_value, type = "l", main="f(x)=ln(1+x) and Maclaurin Series of f(x)", col="blue")#the plot of original function f1
curve(mac6, add=TRUE,col="red")#the curve of maclaurin series of first six term
legend("topleft", legend= c("ln(1+x)","Maclaurin Series n=6"),col = c("blue", "red"), lwd = 2)





#the third question-solution
input<-readline(prompt="Enter the value of x: ")

#convert character into integer
input<- as.numeric(input)

#define three numeric vector length of 10 to contain 
mac_values <- numeric(length(10))#maclaurin series value
abs_errs <- numeric(length(10))#absolute error
rel_errs <- numeric(length(10))#relative error

#assign values to mac_values
mac_value <- function(x){
  for(i in 1:10){
    mac_values[i] <- maclaurinF(x,i)
  }
  return (mac_values)
}
#display the first ten terms depends on user's input x value
mac_values<- mac_value(input)
mac_values





#The forth question-solution
#assign values to abs_errs
for(i in 1:10){
  abs_errs[i] <- abs(mac_values[i]-f1(input))
}

#assign values to rel_errs
for(i in 1:10){
  rel_errs[i] <- (abs_errs[i]*100/f1(input))
}

cat("n\tAbsolute error\t\tRelative error\n")
paste("------------------------------------------------------------------------")

for(i in 1:10){
  cat("\n",i,"\t",abs_errs[i],"\t\t",rel_errs[i])
}