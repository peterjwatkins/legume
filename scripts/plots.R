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
##Plots of all data are messy and does not show much of a story

#---------------------------------------------------------------
## Try simpler approach - maybe better using plant as case by case
ggplot(filter(legume_m, Plant == "Ad"), aes(x=Strain, y=weight, color=Strain, na.rm=TRUE)) +
  geom_point()

ggplot(filter(legume_m, Plant == "Ad"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_point() +
  labs(y="Weight",
       title="Plant Ad")
## Looks better as the differences between strain type are more evident for plant Ad
## Suggests that this could be done for each plant type, resulting in 6 plots.
## It would be useful to add color to the plot

## as boxplot
ggplot(filter(legume_m, Plant == "Ad"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot() +
  labs(y="Weight",
       title="Plant Ad")

ggplot(filter(legume_m, Plant == "Am"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot() +
  labs(y="Weight",
       title="Plant Am")

ggplot(filter(legume_m, Plant == "Dm"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot() +
  labs(y="Weight",
       title="Plant Dm")

ggplot(filter(legume_m, Plant == "Gc"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot() +
  labs(y="Weight",
       title="Plant Gc")

ggplot(filter(legume_m, Plant == "Hv"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot() +
  labs(y="Weight",
       title="Plant Hv")

ggplot(filter(legume_m, Plant == "Oe"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot() +
  labs(y="Weight",
       title="Plant Oe")



