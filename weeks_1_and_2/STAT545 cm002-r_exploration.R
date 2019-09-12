#VERIABLES
number <- 5 + 2
number * 2

#VECTORS
#Vector of travel time
times <- c(60, 40, 33, 15, 20, 55, 35)
times
#define a vector and print it at the same time
(times <- c(60, 40, 33, 15, 20, 55, 35))
#convert to unit of hour
times_h <- times/60

#FUNCTIONS_1
mean(times)
sqrt(times)
range(times)

#LOGICALS
times < 30
times == 20
times != 20
times > 20 & times < 50
times < 20 | times > 50
which(times < 30)
any (times < 30)
all (times < 30)
sum(times < 30)  #TURE as 1, FALSE as 0

#SUBSETTING
times [3]
times [-3]
times [c(2,4)]
times [c(4,2)]
times [1:5]
times [times <30]
times [times >50] <- 50 #replace any entry greater than 50 to 50
times [8] <- NA
mean (times) #NA as result because having NA in the vector

#FUNCTIONS_2
?mean
mean(times, na.rm = TRUE)
mean(times, 0, TRUE)

#DATA_FRAMES
mtcars
#structure of data frame
str(mtcars)
#extract vector of names
names(mtcars)
#extract column
mtcars$mpg
