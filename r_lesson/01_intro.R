3+2
2*(4+2)

#Date type
# numerics 
2.4
class(2.4)
# integer
3L
class(3L)
as.integer(3)
class(as.integer(3))

3+1i
class(3+1i)
#word tpyes
'dog'
class('dog')
TRUE
FALSE
300>200
3 ==3L
class(3) ==class(3L)


"a" > "b"
# TRUE is 1, while FALSE is 0
TRUE > FALSE

#variable two methods
my_var = 'tucson'
dog <- 3

8day # wrong
.day <- 1 # right

#complex variable names
probl.lm
probl-lm
probLm

x <- 3
y <- 2
y <- 17.4
x+y

# Data structure
# Vector must be the same type:num or char(including T or F)
1:10
num_vect <- 1:10
logic_vect <- c(TRUE, FALSE, TRUE)
chac_vect <- c('Matt','Asher', 'Sarah')

class(num_vect)
class(logic_vect)
class(chac_vect)

mixed <- c(TRUE,'A')
class(mixed)

# list
my_list <- list(1,'A',TRUE)

#matrix the same data type
m <- matrix(nrow = 2, ncol = 3)
m1 <- matrix(1:6, nrow = 2, ncol = 3)  #default: bycol
m2 <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)

?matrix  #help


#Data Frame
df <- data.frame(id = letters[1:10], x= 1:10, y = 11:20)
df
class(df)

ncol(df)
nrow(df)
dim(df) # the number of both
str(df) # structure
summary(df)

fact <- c(rep(1,4),rep(2,3),rep(3,5)) # repeat
factor(fact)

cats <- data.frame(coat =c('calico','black','tabby'),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1,0,1))
cats
getwd()
write.csv(x=cats, file = 'cats_data.csv', row.names = FALSE)

cat2 <- read.csv(file = 'cats_data.csv')
cat2
?read.csv  # help

cats$coat   # get col
cats$weight
cats$weight +2  # add 2 to all variable in this col

age <- c(3,4,5)
cbind(cats, age)  # add more col
rbind()

##load gapminder data
gapminder <- read.csv(file = 'gapminder.csv')
gapminder
str(gapminder)
head(gapminder) #first ten rows
tail(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
summary(gapminder)
colnames(gapminder)


min(gapminder$year)
mean(gapminder$lifeExp)
max(gapminder$pop)

#subsetting the data
gapminder[1,1]  #row, col
gapminder[1:5, 6]
colnames(gapminder)

gapminder[20:22, 3:6]
gapminder[-3:-1704,]
gapminder[-3:-1704, -3:-4]

gapminder[,'lifeExp']
head(gapminder[,'lifeExp'])
head(gapminder[,c('lifeExp','pop')]) # c stands for compile, get two cols at the same time


gapminder[gapminder$year ==1997, ]

gapminder[gapminder$country == 'Gabon',]









