#Save assignment1.csv as "CerealsDF" data frame
readfile_path <- "E:/semester 4/Math/Lab/Assignment1/assignment1.csv"
CerealsDF <- read.csv(readfile_path, sep = ";")

#display the structure of CerealsDF
str(CerealsDF)

#display the first ten rows of CerealsDF
head(CerealsDF, 10)

#Delete the second line(the row label is 1) from CerealsDF which represents the data type
CerealsDF <- CerealsDF[-1,]

#display the number of rows and columns in CerealsDF
nrow(CerealsDF)
ncol(CerealsDF)


#change column carbo and sugars value from char to numeric to do addition calculation
class(CerealsDF$carbo) <- "numeric"
class(CerealsDF$sugars) <- "numeric"

#add new column "totalcarbo" as the total carbo and sugars columns
CerealsDF$totalcarbo <- CerealsDF$carbo + CerealsDF$sugars

#how many cereals are hot
hotRows = nrow(subset(CerealsDF, type == "H"))
hotRows

#how many unique manufacturers 
unique_Manu <- length(unique(CerealsDF$mfr))
unique_Manu

#create cereals_k dataframe contains all munufacutured by Kellogg's(K) and display
cereals_k <- subset(CerealsDF, mfr == "K")
cereals_k



#change column calories and fat type to integer 
class(CerealsDF$calories) <- "integer"
class(CerealsDF$fat) <- "integer"

#all cereals have less than or equal 90 calories and have more than 2 units of fat
write <- subset(CerealsDF, calories <=90 | fat >2.0)

destination_directory <- "E:/semester 4/Math/Lab/Assignment1"
output_file <- file.path(destination_directory, "subset.csv")

write.csv(write, file =output_file)
