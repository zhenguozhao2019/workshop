install.packages('dplyr')
library(dplyr)

glimpse(gapminder)

#select
select(gapminder, year)
select(gapminder, year, lifeExp, country)
select(gapminder, -year)  # exclude year


# filter  horizental
filter(gapminder,continent == 'Asia')
filter(gapminder,continent != 'Asia')
filter(gapminder, year> 2000)

two_countries <-c('Albania','Dominican Republic')
filter(gapminder,country %in% two_countries)

# piping
min(gapminder[,'lifeExp'])
gapminder %>% select(lifeExp) %>%  min() # shortcut %>% shift + com +M
  
x1 <- 1:5
x2 <- 2:6
(x1 -x2)^2 %>% sum() %>% sqrt()

gapminder %>% 
  select(-pop, -gdpPercap) %>% 
  filter(continent == 'Asia', year ==2007) %>% 
  head()

gapminder %>% 
  select(-pop, -gdpPercap) %>% 
  filter(continent == 'Asia'|continent =='Oceania') 
  
# mutate
mean_lifeExp_gapminder
gapminder %>%  mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
gapminder <- gapminder %>%  mutate(NewColumn = lifeExp - mean_lifeExp_gapminder)
glimpse(gapminder)
select(gapminder, -NewColumn)
gapminder <- gapminder %>% select(-NewColumn)


# group_by
gapminder %>% 
  group_by(continent)

# summarize
gapminder %>% 
  group_by(continent) %>% 
  summarise(MeanLife = mean(lifeExp))

# summarize
gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife = mean(lifeExp))


gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife = (mean(lifeExp)),
      SeLife = sd(lifeExp)/sqrt(n())) %>% 
  ggplot(mapping = aes(x = year, 
                        y = MeanLife,
                        color = continent)) +
  geom_line() +
  geom_errorbar(mapping = aes(ymin =MeanLife -SeLife,
                              ymax = MeanLife + SeLife,
                              width = 0.3))


gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarise(count =n())


gapminder %>% 
  select(country, continent) %>% 
  unique() %>% 
  group_by(continent) %>% 
  summarise(n = n()) %>% 
  mutate(count =sum(n),
        proportion = n/sum(n))



