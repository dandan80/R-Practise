
#Exercise 1
#define the polynomial in a function

myFunction<-function(x){
  y=0.1*exp(x)*cos(x)+2*log(abs(x))
  return(y)
}

#declare x and the initial value is 3
x=3

#get the first value of myFunction and then add it into vector 
a=myFunction(3)

#add the initial value of myFunciton(3) into the vector
cVec<-c(myFunction(3))

#declare the total summation and the initial value is 0
sum=myFunction(3)

#this while loop used to add summation when x in the range of 3 to 6,and step 0.1 each time
while(x<=5.9){
  x=x+0.1
  b = myFunction(x)
  cVec<-append(cVec, b)
  sum=sum+b
  }

#Keep 4 digits after the decimal point
sum <- round(sum, 4)

#display the result of summary
paste("The sum of this vector is: ",sum)

plot(cVec, main="My First Plot")

