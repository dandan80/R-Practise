#Exercise 2

#define the function 
myFunction<-function(i){
  y=((2^i)/i+(3^i)/(i^2))
  return (y)
}

#define the vector that means the range of value i
count<-1:25

#define variable total used to store the sum of function value
total<- 0

#for loop to calculate summary
for(i in count){
  total=total+myFunction(i)
}

#display the result 
cat("The sum of this sumation is ",total)

plot(myFunction, main = "Exercise2", ylab = "f(x)")
