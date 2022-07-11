# Statistics One, Lecture 3, example script / written by Zsolt Kazsi
# Read data, plot histograms, get descriptives
library(psych) # load psych

# Step 1: Read data into a dataframe called "ratings"
ratings <- read.table("STATS1.EX.01.TXT",header=T)

# Step 2: Explore the contents of the dataframe
class(ratings)
names(ratings)

# Step 3: plot histograms for each of the wines
hist(RedTruck) # doesn't work

# Step 3b: Plot 4 histograms on one page
layout(matrix(c(1,2,3,4),2,2,byrow=TRUE)) # c stands for concatenate
hist(ratings$WoopWoop,xlab="Rating")
hist(ratings$RedTruck,xlab="Rating")
hist(ratings$HobNob,xlab="Rating")
hist(ratings$FourPlay,xlab="Rating")

# Step 4: Get descriptive statistics
describe(ratings)
