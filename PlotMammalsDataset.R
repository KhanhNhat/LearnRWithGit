mammals %>% 
    filter(vore == 'Insectivore') %>%
    ggplot(aes(x = sleep_total, fill = vore)) +
    geom_density(col = NA, alpha = 0.35) +
    scale_x_continuous(limits = c(0, 24)) +
    coord_cartesian(ylim = c(0, 0.3))

mammals %>% 
  ggplot(aes(x = sleep_total, fill = vore)) +
  geom_density(col = NA, alpha = 0.35) +
  scale_x_continuous(limits = c(0, 24)) +
  coord_cartesian(ylim = c(0, 0.3)) +
  facet_wrap( ~ vore, ncol = 2)

mammals %>% 
  ggplot(aes(x = sleep_total, fill = vore)) +
  geom_density(col = NA, alpha = 0.35) +
  scale_x_continuous(limits = c(0, 24)) +
  coord_cartesian(ylim = c(0, 0.3))
  
mammals %>% 
  ggplot(aes(x = sleep_total, fill = vore)) +
  geom_density(col = NA, alpha = 0.35, trim = TRUE) +
  scale_x_continuous(limits = c(0, 24)) +
  coord_cartesian(ylim = c(0, 0.3))