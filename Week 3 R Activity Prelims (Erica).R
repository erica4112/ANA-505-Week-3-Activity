#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
getwd()
setwd()

#This brings the 'Titanic' data into my environment from Base R (Run this)
Titanic

#This code saves the Titanic data as a dataframe with a new name
#TASK: Save the Titanic data as a dataframe with a new name that includes your first name
#for example I would name my data AnnaTitanic
EricaTitanic <-data.frame(Titanic)
print(EricaTitanic)


#Note, no need in this assignment#
#install.packages("tibble")
#library(package = "tibble")
#hp_data <- tibble(class = c("1st","2st","3st","crew","1st","2st","3st","crew","1st","2st","3st","crew","1st","2st","3st","crew"),
                  #male = c("0","0","35","0","118","154","387","670","5","11","13","0","57","14","75","192"),
                  #female = c("0","0","17","0","4","13","89","3","1","13","14","0","140","80","76","20"),
                  #age = c("child","child","child","child","adult","adult","adult","adult","child","child","child","child","adult","adult","adult","adult"),
                  #survived = c(FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE,TRUE)
                  #)
#hp_data


#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the code that returns the top rows
head(hp_data,2)

#This code chunk shows me the internal structure 
#Task: Write the code that shows the number of rows, columns, column names, class of columns   

#method one
nrow(hp_data)
ncol(hp_data)
rownames(hp_data,do.NULL = TRUE, prefix = "row")
colnames(hp_data, do.NULL = TRUE, prefix = "col")

#method two
internal_structure <- str(hp_data)
print(internal_structure)

#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the code that gives summary stats
summary(hp_data)


#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the code to create an object for just the Sex column 
#and write the code to create an object for just the Age column 
#(these should show as values in the environment window, not as 'datasets'Data')
sex_object<-EricaTitanic$Sex
print(sex_object)

age_object<-EricaTitanic$Age
print(age_object)

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#Once I do this, I can see the Data in the Environment 
#Task: Write the code to create one new data.frame from the Sex and Age values you just created
new_hp_data <- data.frame(sex = sex_object, age= age_object)
print(new_hp_data)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the code to create a subset of the data where the Freq is > 25
#If I wanted to save the subset, I would need to name it as done in the code above
subset_hp_data <- subset(hp_data,freq >25)
print(subset_hp_data)

#This shows me how many rows are in my dataset and
#TASK: Write the code that returns the number of rows
num_rows <- nrow(hp_data)
print(num_rows)

#This shows me how many columns are in my dataset
#TASK: Write the code that returns the number of columns
num_cols <- ncol(hp_data)
print(num_cols)

#This also shows me how many rows and columns with just one command
#TASK: Write the code that returns the number of rows and columns with just one command
dimensions <- dim(hp_data)
print(dimensions)

#This code will install the ggplot2 package
#TASK: Write the code that installs the ggplot2 package
install.packages("ggplot2")
  
#This code calls the ggplot2 package so I can use its functions
#Task: Write the code that 'calls' the ggplot2 package
library(package = "ggplot2")

#This code creates a bar chart of the number of passengers that survived 
#and did not survive (2 bars)
#Task: replace the dataframe name and column names to create the chart
#(you should see the chart in the Plots window)
ggplot(Yourdataframename, aes(columnname, columnname)) +
  geom_col()

ggplot(hp_data, aes(survived, freq)) +
  geom_col()



