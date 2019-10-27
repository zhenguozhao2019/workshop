install.packages('ggplot2')
library(ggplot2)

#dataframe
#variables
#visualization

gapminder <- read.csv('gapminder.csv', stringsAsFactors = TRUE)

ggplot(data = gapminder, mapping = aes(x =gdpPercap, y= lifeExp)) 
        + geom_point()

ggplot(data = gapminder, mapping = aes(x =year, y= lifeExp, color=continent, by = country))+ geom_point()


ggplot(data= gapminder, mapping = aes(x = year, y =lifeExp, color = continent, 
                                      by =country)) + geom_line()

lifeExpYear <- ggplot(data= gapminder, mapping = aes(x = year, y =lifeExp, color = continent, 
                                      by =country)) + geom_point()+geom_line()

ggplot(data= gapminder, mapping = aes(x = year, y =lifeExp, by =country
                                   )) + geom_line(mapping = aes(color=continent))+geom_point()
                                                                
ggsave(filename = 'liefExp_vs_year.png', lifeExpYear)

# fitting models

ggplot(data = gapminder, mapping = aes(
  x=gdpPercap, y = lifeExp
)) + geom_point() + scale_x_log10()

ggplot(data = gapminder, mapping = aes(
  x=gdpPercap, y = lifeExp
)) + geom_point() + scale_x_log10()+ geom_smooth(method ='lm')

ggplot(data = gapminder, mapping = aes(
  x=gdpPercap, y = lifeExp
)) + geom_point() + scale_x_log10()+ geom_smooth(method ='loess')


?geom_point
ggplot(data = gapminder, mapping = aes(
  x=gdpPercap, y = lifeExp, color = continent
)) + geom_point(size =3, shape =17) + scale_x_log10()+ geom_smooth(method ='loess')


ggplot (data = gapminder, 
        mapping = aes(x= gdpPercap,
                      fill = continent)) +   
  geom_density()
  

ggplot (data = gapminder, 
        mapping = aes(x= gdpPercap,
                      color = continent)) +   
  geom_density()+
  scale_x_log10()+
  facet_wrap(~ year)

