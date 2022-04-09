#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment

getwd()
setwd()

#This brings the 'women' data into my environment from Base R (Run this)
women


#This code saves the women data as a dataframe with a new name
#TASK: Save the women dataset with a new name
women = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
height = c(58,59,60,61,62,63,64,65,66,67,68,69,70,71,72)
weight = c(115,117,120,123,126,129,132,135,139,142,146,150,154,159,164)
women_frame <- data.frame(height, weight)
write.csv(women_frame, "c:\\users\\ashwin.madhusudan\\onedrive - spreetail\\Desktop\\Personal\\Files\\Personal\\McDaniel College\\ANA 505\\Week 3\\MyFirstDataFrame.csv", row.names = FALSE)


#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the function that returns the top rows
head(women_frame,2)


#This code chunk shows me the internal structure 
#Task: Write the function that shows the number of rows, columns, column names, class of columns   
nrow(women_frame)
ncol(women_frame)
names(women_frame)
lapply(women_frame,class)


#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the function that gives summary stats
summary(women_frame)


#This allows me to apply the function to just one certain column
#Task: Write the function to return the Mean of just the height column
mean(women_frame$height)


#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the function to create an object for just the Weight column 
#and write the function to create an object for just the Height column 
#(these should show as values in the environment window, not as datasets)
weight_obj <- women_frame$weight
height_obj <- women_frame$height


#This takes the individual objects ('values' in the Environment) and creates a dataframe
#I can see the Data in the Environment 
#Task: Write the function to create a data.frame from the height and weight values you just created
new_women_frame = data.frame(weight_obj, height_obj)


#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the function to create a subset of the data where the height is > 65
#If I wanted to save the subset, I would need to name it as done in the code above
done = subset(women_frame,height>65)


#This shows me how many rows are in my dataset and
#TASK: Write the function that returns the number of rows
nrow(women_frame)


#This shows me how many columns are in my dataset
#TASK: Write the function that returns the number of columns
ncol(women_frame)


#This also shows me how many rows and columns with just one function
#TASK: Write the function that returns the number of rows and columns with just one command
dim(women_frame)


#This code will install the ggplot2 package
#TASK: Write the function that installs the ggplot2 package
install.packages("ggplot2")


#This code calls the ggplot2 package so I can use its functions
#Task: Write the function that 'calls' the ggplot2 package
library("ggplot2")


#This produces a scatter plot of the height and weight columns
#Task: replace the dataset name and column names in the plot function below 
#to produce a scatter plot of height and weight
ggplot(women_frame, aes(x=weight, y=height)) + 
  geom_point()

#Optional 'Just for fun' TASK: Change the arguments for the geom point and see what happens to the plot
ggplot(women_frame, aes(x=weight, y=height)) + 
  geom_point(shape = 21, colour = "blue", fill = "red", size = 5, stroke = 5)
