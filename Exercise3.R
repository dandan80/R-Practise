
#Exercise 3
#define random seed: the random numbers generated will be the same each time 
#you run the code
set.seed(75)

#generate Vec1 and Vec2 randomly, number range is 0:999, amount is 100
Vec1<- sample(0:999, 100)
Vec2<- sample(0:999, 100)

#generate Vec2a when element in Vec2 greater than 600
Vec2a <- Vec2[Vec2>600]

#generate Vec2b by function which means the indexing value of Vec2a in Vec2
Vec2b <- which(Vec2>600)

#generate Vec1c which correspond to the values in Vec2
Vec1c <- Vec1[Vec2b]

#How many numbers in Vec1 are divisible by 2
count=0

for(i in 1:100){
  if(Vec1[i] %% 2==0){
    count=count+1
  }
}

cat("The numbers in Vec1 are divisible by 2 is: ",count)

Vec1
Vec2
Vec2a
Vec2b
Vec1c