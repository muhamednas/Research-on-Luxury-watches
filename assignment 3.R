library(tidyverse)

#Import Data
watches = read.csv("E:/rprogramming.RData/Assignment 2/Luxury watch.csv")
View(watches)

# View the first few rows
head(watches)

#Filter observation
specific_columns <- c("Brand", "Model","Case.Material","Movement.Type",
                      "Water.Resistance","Dial.Color","Crystal.Material",
                      "Power.Reserve","Price..USD.")
filtered_data <- watches %>% select(all_of(specific_columns))

#By Specific Brands
specific_watches <- c("Rolex", "Omega","Patek Phillippe","Cartier","Hublot",
                      "Audimars Piguet","Tah Heuer","IWC","Bulgari")
specific_Brands <-  watches %>% 
  filter(Brand %in% specific_watches)

# Calculate summary statistics
summary(watches)

#Save the filtered data
write.csv(specific_Brands, file = "specific_Brands.csv")
view(specific_Brands)

# Finding Missing Values
colSums(is.na(specific_Brands))


# Remove commas and dollar signs
specific_Brands$Price..USD. <- gsub(",", "", specific_Brands$Price..USD.) # remove commas
specific_Brands$Price..USD. <- gsub("\\$", "", specific_Brands$Price..USD.) # remove dollar signs

# Convert to numeric
specific_Brands$Price..USD. <- as.numeric(specific_Brands$Price..USD.)

specific_Brands$Water.Resistance <- as.numeric(specific_Brands$Water.Resistance)

class(specific_Brands$Water.Resistance)

class(specific_Brands$Price..USD.)

specific_Brands$Water.Resistance <- na.omit(specific_Brands$Water.Resistance)

# Create a histogram
ggplot(specific_Brands, aes(x = Price..USD.)) +
  geom_histogram(binwidth = 5000, color = "purple", fill = "white") +
  labs(x = "Price (USD)", y = "Frequency", title = "Histogram of Watch Prices")


# Create a Box plot 
ggplot(specific_Brands, aes(, y = Price..USD.)) +
  geom_boxplot(fill = "green") +
  labs(title = "Box Plot of Watch Prices", x = "", y = "Price(USD)")


