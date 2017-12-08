p = ggplot(faithful, aes(x = waiting, y = eruptions)) +
  scale_x_continuous(limits = c(30, 100)) +
  scale_y_continuous(limits = c(1, 6)) +
  coord_fixed(60/4.5)

#Using geom_density_2d():
p + geom_density_2d()

#Using stat_density_2d():
p + stat_density_2d(aes(col = ..level..), h = c(5, 0.5))

#Combine with viridis package:
library(viridis)
p + stat_density_2d(aes(fill = ..density..),geom = 'tile', h = c(5, 0.5), contour = FALSE) +
  scale_fill_viridis()