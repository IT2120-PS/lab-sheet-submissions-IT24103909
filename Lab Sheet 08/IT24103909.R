# setwd("C:\\Users\\dilmi\\Desktop\\IT24103864")

# Importing the data set
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(data)

# Question 1: Calculate the population mean and population standard deviation
# of the laptop bag weights.
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)

print(paste("Population Mean:", pop_mean))
print(paste("Population Standard Deviation:", pop_sd))

# Question 2: Draw 25 random samples of size 6 (with replacement) and calculate
# the sample mean and sample standard deviation for each sample.
# Create a null matrix to store sample data sets.
samples <- c()
n_samples <- 25
sample_size <- 6

for (i in 1:n_samples) {
  s <- sample(Weight.kg., size = sample_size, replace = TRUE)
  samples <- cbind(samples, s)
}

# Assign column names for each sample
colnames(samples) <- paste0("Sample_", 1:n_samples)

# Calculate the mean and standard deviation for each sample
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

# Display sample means and standard deviations
print("Sample Means:")
print(sample_means)
print("Sample Standard Deviations:")
print(sample_sds)

# Question 3: Calculate the mean and standard deviation of the 25 sample means
# and state the relationship of them with true mean and true standard deviation.
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

print(paste("Mean of Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of Sample Means (Standard Error):", sd_of_sample_means))

# Compare and state the relationship
# The theoretical standard deviation of the sample means is pop_sd / sqrt(sample_size)
theoretical_sd_of_means <- pop_sd / sqrt(sample_size)

print("--- Relationships ---")
print("Relationship between Population Mean and Mean of Sample Means:")
print(paste("Population Mean (", pop_mean, ") is approximately equal to the Mean of Sample Means (", mean_of_sample_means, ")"))

print("Relationship between Population Standard Deviation and Standard Deviation of Sample Means:")
print(paste("The Standard Deviation of Sample Means (", sd_of_sample_means, ") is approximately equal to the Population Standard Deviation divided by the square root of the sample size (", theoretical_sd_of_means, ")"))

# Importing the data set
data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(data)

# Question 1: Calculate the population mean and population standard deviation
# of the laptop bag weights.
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)

print(paste("Population Mean:", pop_mean))
print(paste("Population Standard Deviation:", pop_sd))

# Question 2: Draw 25 random samples of size 6 (with replacement) and calculate
# the sample mean and sample standard deviation for each sample.
# Create a null matrix to store sample data sets.
samples <- c()
n_samples <- 25
sample_size <- 6

for (i in 1:n_samples) {
  s <- sample(Weight.kg., size = sample_size, replace = TRUE)
  samples <- cbind(samples, s)
}

# Assign column names for each sample
colnames(samples) <- paste0("Sample_", 1:n_samples)

# Calculate the mean and standard deviation for each sample
sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

# Display sample means and standard deviations
print("Sample Means:")
print(sample_means)
print("Sample Standard Deviations:")
print(sample_sds)

# Question 3: Calculate the mean and standard deviation of the 25 sample means
# and state the relationship of them with true mean and true standard deviation.
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

print(paste("Mean of Sample Means:", mean_of_sample_means))
print(paste("Standard Deviation of Sample Means (Standard Error):", sd_of_sample_means))

# Compare and state the relationship
# The theoretical standard deviation of the sample means is pop_sd / sqrt(sample_size)
theoretical_sd_of_means <- pop_sd / sqrt(sample_size)

print("--- Relationships ---")
print("Relationship between Population Mean and Mean of Sample Means:")
print(paste("Population Mean (", pop_mean, ") is approximately equal to the Mean of Sample Means (", mean_of_sample_means, ")"))

print("Relationship between Population Standard Deviation and Standard Deviation of Sample Means:")
print(paste("The Standard Deviation of Sample Means (", sd_of_sample_means, ") is approximately equal to the Population Standard Deviation divided by the square root of the sample size (", theoretical_sd_of_means, ")"))