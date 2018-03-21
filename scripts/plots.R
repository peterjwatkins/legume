library(ggplot2)

#Assumes that data_wrangling.R has been run
# library(tidyverse) and legume_m are present

ggplot(legume_m, aes(x=Plant, y=weight)) +
  geom_point()
##Simple plot showing weight against plant type


ggplot(legume_m, aes(x=Plant, y=weight)) +
  geom_boxplot()
##Simple plot showing weight against plant type


ggplot(legume_m, aes(x=Strain, y=weight)) +
  geom_point()
##Box plot showing weight against strain type
ggplot(legume_m, aes(x=Strain, y=weight)) +
  geom_boxplot()
##Box plot showing weight against strain type

ggplot(legume_m, aes(x=Plant, y=weight, color=Strain, na.rm=TRUE)) +
  geom_point()
##Simple plot showing weight against plant type

ggplot(legume_m, aes(x=Strain, y=weight, color=Plant)) +
  geom_point()
##Simple plot showing weight against plant type