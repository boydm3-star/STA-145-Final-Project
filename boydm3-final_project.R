# boydm3-final_project.R
# 1.3 Activity:Music :Upload data to R

# Step 6: load the tidyverse
library(readr)

# Step 7: load data.csv from the working directory
data <- read_delim("data.csv")

# Step 8: run the three checks
dim(data)
names(data)
summary(data)

# descriptive statistics for table 1
# for a quantitative variable
summary (data$spotify_streams)
mean(data$spotify_streams)
sd(data$spotify_streams)
min(data$spotify_streams)
max(data$spotify_streams)

# for a qualitative variable
table (data$genre)

# linear regression test
lm <- lm(spotify_streams ~ as.factor(genre), data = data)
summary(lm)

# box plot
boxplot (data$spotify_streams ~ data$genre)