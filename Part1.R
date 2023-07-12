require("PolynomF")

#define x as an object of class polynom()
x <- polynom()
p <- x^3-3*x^2-2*x+7

#check the class of p
paste("Class of p is: ",class(p))

#find the coefficients of p,and the order is reversed
cat("Coefficient:", coef(p))

#define another y and the polynomial q
y <- polynom()
q <- y^2+2*y

#check class of y and q
paste("Class of y is: ", class(y))
paste("Class of q is: ", class(q))

#Calculation of p and q
p + q
p - q
p * q

#find the derivative of p
dpdx <- deriv(p)
paste("dpdx: ", dpdx)

#find the derivative of q
dqdy <- deriv(q)
paste("dqdy: ",dqdy)

#use function curve() plot p
curve(p, from = -2, to = 3, ylab = "p(x), dpdx",col = "red", main = "Lab4 Part 1")

#add dpdx into the same figure 
curve(dpdx, from = -2, to = 3, col = "blue", add = TRUE)

#add a horizontal line with slope zero and intercept of zero
abline(h = 0, col = "green")

