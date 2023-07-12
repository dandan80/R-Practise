#load "dplyr" package
library("dplyr")

#load "airquality" dataset and assign it to my_df variable
my_df <- airquality

#display the structure of my_df and first six lines of it by str()
str(my_df)

head(my_df,6)
#find the name of each column by names()
names(my_df)

#my_df_temp only contains temperature and name by select()
my_df_temp <- select (my_df, Temp)
str(my_df_temp)

#subscribe a sub dataframe from my_df the months are 6,7,8
filter_data <- filter(my_df, Month>=6 & Month<=8)

#calculate the mean temperature
mean_tempreture <- mean(filter_data$Temp)
print(mean_tempreture)

#calculate the median temperature
median_tempreture <- median(filter_data$Temp)
print(median_tempreture)

#calculate the standard deviation temperature
standard_deviation_tempreture <- sd(filter_data$Temp)
print(standard_deviation_tempreture)


#create a sub-dataframe of my_df and the month is from 5 to 9
subdataframe <- filter(my_df, Month>=5 & Month<=9)
mean_temp <- mean(subdataframe$Temp)
sd_temp <- sd(subdataframe$Temp)

#find the probability temperature less than 70 from May to Sep.
temp_less_70 <- pnorm(70, mean=mean_temp, sd=sd_temp)
cat("the probobility of temperature less than 70: ",temp_less_70)

#find the probability temperature greater than 85 from May to Sep.
temp_greater_85 <- pnorm(85, mean=mean_temp, sd=sd_temp, lower.tail=FALSE)
cat("The probability of temperature greater than 85: ",temp_greater_85)

#find the probability temperature less than 90 and greater than 75 from May to Sep.
temp_between_75_90 <- pnorm(90, mean=mean_temp, sd=sd_temp)-pnorm(75, mean=mean_temp, sd=sd_temp)
cat("The probability of temperature less than 90 and greater than 75 is: ", temp_between_75_90)
