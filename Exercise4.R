
#Exercise 4

set.seed(75)
Vec1<- sample(0:999, 100)

myFun<-function(vec){
#define the result vector to contain the calculate value
  result<-c()
  
# when x value in vec argument, use if-else loop to define different functions
# depends on different x
  for(x in vec){
    if(x<0){
          y=x^2+2*x+3
    }else if(x>=0 & x<2){
          y=x+3
    }else{
          y=x^2+4*x-7
    }
    
    #add the calculate result to the vector result
    result<-append(result,y)
  }
  return (result)
}

#call myFun function
result<-myFun(Vec1)

plot(myFun, main="Excise 4's Plot", xlim=c(-4,4))