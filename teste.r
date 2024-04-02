# Calculate summary statistics using dplyr::summarise()

# Install the package dplyr
install.packages("dplyr", repos = "https://cran.r-project.org")

# Load the ggplot2 package
install.packages("ggplot2", repos = "https://cran.r-project.org")

library(ggplot2)

library(dplyr)

# Load the dataset
data <- read.csv("onlinefoods.csv")

# Inspect the structure of the dataset
str(data)

# Get summary statistics of the dataset
summary(data)

# View the first few rows of the dataset
head(data)

# Remove rows with missing values
data <- na.omit(data)

# Calculate summary statistics using summary()
summary(data)

# Calculate summary statistics using dplyr::summarise()
# data %>%
#     summarise(mean = mean(Output),
#                         median = median(Output),
#                         sd = sd(Output)) -> summary_stats


# # Create a contingency table
# contingency_table <- table(data$Age, data$Output)

# Print the contingency table
# print(contingency_table)

# Create a cross-tabulation table
cross_tabulation <- xtabs(~ data$Age + data$Output, data = data)

# Print the cross-tabulation table
print(cross_tabulation)


# Create a histogram of the Output variable
ggplot(data, aes(x = Output)) +
    geom_histogram(fill = "steelblue", color = "white") +
    labs(title = "Histogram of Output", x = "Output", y = "Frequency")

# Create a scatter plot of Age vs. Output
ggplot(data, aes(x = Age, y = Output)) +
    geom_point(color = "steelblue") +
    labs(title = "Scatter Plot of Age vs. Output", x = "Age", y = "Output")

# Create a box plot of Output by Age
ggplot(data, aes(x = Age, y = Output)) +
    geom_boxplot(fill = "steelblue", color = "white") +
    labs(title = "Box Plot of Output by Age", x = "Age", y = "Output")