for (my_var in 1:10){
  print(my_var)
}

#paste
paste0('I am a ', 5)

#loops in loops
for (i in 1:3){
  for (j in letters[1:3]){
    print(paste(i,j))
  }
}

c <- c()
c
for (i in 1:5){
  c <- c(c, i^2)
  print(c)
}

unique(gapminder$continent)
for (cont in unique(gapminder$continent)){
  min_life <- min(gapminder[gapminder$continent ==cont, 'lifeExp'])
  max_life <- max(gapminder[gapminder$continent ==cont, 'lifeExp'])
  print(paste(cont, 
              'has a life expectancy between',
              min_life,
              'and',
              max_life))
}

for (cont in unique(gapminder$continent)){
  mean_life <- min(gapminder[gapminder$continent ==cont, 'lifeExp'])
  print(paste(cont, 
              'has a common life expectancy of',
              mean_life))
}


x <- -5
if (x>0){
  print('positive number')
}


if (x>0){
  print('positive number')
} else{
  print('negative number')
}


x <-0
x <- -5
if (x>0){
  print('positive number')
} else if (x< 0){
  print('negative number')
}

# loop and conditional statements
for (i in c(-1,3, 0,-7)){
  if (i>0){
    print('positive number')
  } else if(i<0){
    print('negative number')
  } else{
    print('zero')
  }
}

#gapminder with loops and conditional stetments
mean_lifeExp_gapminder <- mean(gapminder$lifeExp)

# find which continents have a mean lifeExp above the mean_lifeExp_gapminder
# (mean of the whole lifeExp column)


