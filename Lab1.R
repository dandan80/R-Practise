#Exercise 1: create vector and matrix

#the first step is create three vector and initialize it
v1 <- c(2,4,6)
v2 <- c(7,9,11)
v3 <- c(13,15,17)

#create matrix by vectors and each column represent a vector
x = cbind(v1,v2,v3)

#print out matrix
print(x)

#Exercise 2: create a data frame contains student information

#step 1: create a data frame and initialize it
studentSystem <- data.frame(
  Name = c("Michael A","Jennifer R","Sara B","James H"),
  Gender =c('M','F','F','M'),
  Age = c(18,19,20,22),
  Designation =c("CET Student","CP Student","SSN Student","CS Student"),
  NoCourses = c(5,4,NA,3)
)

#step 2: display data frame
print(studentSystem)
