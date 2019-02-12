dl <- d %>%
  group_by(nome, dia) %>% 
  mutate(rn = row_number()) %>% 
  spread(nome, hora) %>%
  select(-rn)