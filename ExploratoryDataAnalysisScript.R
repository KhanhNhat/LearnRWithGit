library(tidyverse)

comics_df = read_csv('comics.csv')

comics_df$align = as.factor(comics_df$align)
comics_df$gender = as.factor(comics_df$gender)
comics_df$id = as.factor(comics_df$id)

align_vs_gender = table(comics_df$align, comics_df$gender)

comics_df = comics_df %>%
  filter(align != 'Reformed Criminals') %>%
  droplevels()

ggplot(comics_df, aes(x = gender, fill = align)) + 
  geom_bar(position = 'dodge')

cars = read_csv('cars04.csv')

ggplot(cars, aes(x = 1, y = msrp)) +
  geom_boxplot() +
  ggtitle('Box plot of msrp property') +
  theme(plot.title = element_text(color = 'blue', hjust = 0.5))
