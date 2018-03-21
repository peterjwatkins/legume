library(tidyverse)
legume <- read_csv("data/legume_weights_rhizobia_20str.csv")

legume_m <- legume %>% 
  mutate(Replicate = as.numeric(as.factor(Block))) %>% ## blocks represent experimental replication
  select(-Block) %>% 
  mutate(Plant = as.factor(Plant)) %>% 
  mutate(Strain = as.factor(Strain))
## data in tidy format