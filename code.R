library(readxl)
life <- read_excel("~/Desktop/Rstudio/week9/life.xlsx")
View(life)                                                                                     
library(dplyr)
col_types = cols(col_number(),col_factor(),col_factor(levels = c('Nothing at all','Not very much','A fair amount','A great deal'),ordered = TRUE),col_number())
x <- life$age
y <- life$beliefs
cor(x,y,method = 'spearman')
x<- life$age
y <- life$beliefs
cor(x,y,method = 'spearman')
cor.test(x,y,method = 'pearson')
fake.data <- data.frame(x= life$age,y=life$beliefs)
cor.test(~x+y, method='pearson', data=)
cor.test(~x+y, method='pearson', data=fake.data)
fake.data %>%
  + cor.test(~x+y, method='pearson',data=.)
fake.data %>%
  + ggplot(aes(x=x,y=y))+geom_point()+ggtitle('Fake data',subtitle = 'There points don\'t mean anything')
ggsave('fake-data-scatterplot.png', width=10, units = 'cm')
fake.data %>%
  + ggplot(aes(x=x,y=y))+geom_bin2d(bins=2)+ggtitle('Fake data', subtitle = 'These titiles really don\'t mean anything')
ggsave('fake-data-heatmap.png',width=10,units = 'cm')