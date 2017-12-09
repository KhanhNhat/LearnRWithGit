mammals2 = mammals %>%
  group_by(vore) %>%
  mutate(n = n()/nrow(mammals))

#Just display how value is distributted
ggplot(mammals, aes(x = vore, y = sleep_total, fill = vore)) +
  geom_violin()

#Absolute violin plot: how value is distributted and percent of each type of value in total dataset
ggplot(mammals2, aes(x = vore, y = sleep_total, fill = vore)) +
  geom_violin(aes(weight = n), col = NA)