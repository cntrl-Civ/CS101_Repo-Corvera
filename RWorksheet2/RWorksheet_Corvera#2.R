#1 a.Sequence from -5 to 5. Write the R code and its output. Describe its output.
seqn5to5 <- seq(-5, 5)
seqn5to5

#b.x <- 1:7. What will be the value of x?
x <- 1:7
x

#2 a. seq(1, 3, by=0.2) # specify step size
seq1to3 <- seq(1,3, by=0.2)
seq1to3

#3. A factory has a census of its workers. There are 50 workers in total. The following list shows their ages:
worker_age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                18)
worker_age

#a. Access 3rd element, what is the value?
third_element <- worker_age[3]
third_element

#b. Access 2nd and 4th element, what are the values?
secondfourth_element <- worker_age[c(2,4)]
secondfourth_element

#c. Access all but the 4th and 12th element is not included.
allbut4n12 <- worker_age[-c(4,12)]
allbut4n12

#4. *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).
names_x <- c("first"=3, "second"=0, "third"=9)
names_x

#a. Print the results. Then access x[c("first", "third")].
xnames <- names_x[c("first", "third")]
xnames

#5. Create a sequence x from -3:2.
seqx <- seq(-3:2)
seqx

#a.Modify 2nd element and change it to 0; x[2] <- 0 x
seqx[2] <- 0
seqx

#6.*The following data shows the diesel fuel purchased by Mr. Cruz.

#a. Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the R scripts and its output.
mr.cruz_df <- data.frame(Month=c("Jan", "Feb", "March", "Apr", "May", "June"),
                           Price_per_liter=c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
                           Purchase_quantity=c(25, 30, 40, 50, 10, 45))
mr.cruz_df

#b. What is the average fuel expenditure of Mr. Cruz from Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘. Write the R scripts and its output.
avgfuelexp <- weighted.mean(mr.cruz_df$Price_per_liter, mr.cruz_df$Purchase_quantity)
avgfuelexp

#a. Type “rivers” in your R console.
rivers

#Create a vector data with 7 elements, containing the number of elements (length) in rivers, their sum (sum), mean (mean), median(median), variance(var), standard deviation(sd), minimum (min) and maximum (max). data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers), sd(rivers), min(rivers), max(rivers))
data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#8. The table below gives the 25 most powerful celebrities and their annual pay as ranked by the editions of Forbes magazine and as listed on the Forbes.com website.

#a. Create vectors according to the above table.
Forbes_df <- data.frame(Power_Ranking = c(1:25), 
                        Celebrity_Name = c("Tom Cruise", "Rolling Stones","Oprah Winfey", "U2", "Tiger Woods","Steven Speilberg", "Howard Stern","50 Cent", "Cast of the Sopranos", "Dan Brown", "Bruce Springteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "Goerge Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K Rowling", "Brad Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lemon", "Celin Dion", "Kobe Bryant"),
                        Pay = c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40,                                 223, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31))
Forbes_df

#b. Modify the power ranking and pay of J.K. Rowling.
Change power ranking to 15 and pay to 90.
Forbes_df[19,1] <- 15
Forbes_df[19,3] <- 90
Forbes_df

#c. Create an excel file from the table above and save it as csv file(PowerRanking). Import the csv file into the RStudio.
write.csv(Forbes_df, file = "PowerRanking.csv", row.names = FALSE)
importPR <- read.csv("PowerRanking.csv")
importPR

#d. Access the rows 10 to 20 and save it as Ranks.RData.
Ranks <- Forbes_df[10:20,]
save(Ranks, file = "Ranks.RData")
Ranks

#9. Download the Hotels-Vienna https://tinyurl.com/Hotels-Vienna
#a. Import the excel file into your RStudio.
library(readxl)
filepath <- "C:/Users/victo/OneDrive/Desktop/R/RWorksheet2/hotels-vienna.xlsx"
hotels_vienna <- read_excel(filepath)

head(hotels_vienna)

#b. How many dimensions does the dataset have?
datasetDim <- dim(hotels_vienna)
datasetDim

#c. Select columns country, neighbourhood, price, stars, accomodation_type, and ratings.
Scolumn <- select(hotels_vienna, country, neighbourhood, price, stars, accommodation_type, rating)
Scolumn

#d. Save the data as **new.RData to your RStudio.
save(Scolumn, file = "new.RData")
Scolumn

#e. Display the first six rows and last six rows of the new.RData.
load("new.RData")
head(Scolumn)
tail(Scolumn)

#10. Create a list of ten (10) vegetables you ate during your lifetime. If none, just list down.

#a. Write the R scripts and its output.
vegetablesIate <- list("potato", "carrot", "lettuce", "onion", "garlic", "cabbage", "ginger", "cucumber", 
                    "pumpkins", "lemon_grass")
vegetablesIate

#b. Add 2 additional vegetables after the last vegetables in the list.
vegetablesIate <- append(vegetablesIate, c("papaya", "monggo"))
vegetablesIate

#c. Add 4 additional vegetables after index 5. How many datapoints does your vegetable list have?
vegetablesIate <- append(vegetablesIate, c("bell_pepper", "spinach", "beans", "broccoli"), after = 5)
vegetablesIate

#d. Remove the vegetables in index 5, 10, and 15.
RvegetablesIate <- vegetablesIate[-c(5,10,15)]
RvegetablesIate