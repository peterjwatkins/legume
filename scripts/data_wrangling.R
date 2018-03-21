library(tidyverse)
legume <- read_csv("data/legume_weights_rhizobia_20str.csv")

legume %>% 
  mutate(Block = as.factor(Block)) %>% ## blocks represent experimental replication
  mutate(Plant = as.factor(Plant)) %>% 
  mutate(Strain = as.factor(Strain)) 
