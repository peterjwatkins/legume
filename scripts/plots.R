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

##Boxplot with color for Oe
# Ref https://stackoverflow.com/questions/14604439/plot-multiple-boxplot-in-one-graph

ggplot(filter(legume_m, Plant == "Oe"), aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot(aes(fill=Strain), na.rm=TRUE) +
  labs(y="Weight",
       title="Plant Oe")
# Comment - color really makes things stand out
# For comparative purposes, plotting each plant separately is probably not useful
#
# Much better to plot the full data out by plant to allow full comparison of the data
# set
#
ggplot(legume_m, aes(x=Strain, y=weight, na.rm=TRUE)) +
  geom_boxplot(aes(fill=Strain), na.rm=TRUE) +
  facet_wrap(~Plant) + 
  theme(
        axis.ticks.x = element_blank(),    # allows the x labels to be removed
        axis.text.x = element_blank(),
        axis.title = element_blank(),
        legend.position = "bottom") +   # w/out this, all strains show on x
  labs(y="Weight",
       title="Plant")

#-----
# Plant growth versus strain type

ggplot(filter(legume_m, Strain=="1174"), aes(x=Plant, y=weight)) +
  geom_point()

ggplot(filter(legume_m, Strain=="1075"), aes(x=Plant, y=weight)) +
  geom_point(na.rm=TRUE)
##- Ty
ggplot(filter(legume_m, Strain=="1075"), aes(x=Plant, y=weight, color=Plant)) +
  geom_boxplot(na.rm=TRUE)

ggplot(legume_m, aes(Plant, y=weight)) +
  geom_boxplot(aes(fill=Plant), na.rm=TRUE) +
  facet_wrap(~Strain) +
  theme(
    axis.ticks.x = element_blank(),    # allows the x labels to be removed
    axis.text.x = element_blank(),
    axis.title = element_blank(),
    legend.position = "bottom") +   # w/out this, all strains show on x
  labs(y="Weight",
       title="Strain")

ggplot(legume_m, aes(Plant, y=weight)) +
  geom_point(aes(fill=Plant), na.rm=TRUE) +
  facet_wrap(~Strain) +
  theme(
    axis.ticks.x = element_blank(),    # allows the x labels to be removed
    axis.text.x = element_blank(),
    axis.title = element_blank(),
    legend.position = "bottom") +   # w/out this, all strains show on x
  labs(y="Weight",
       title="Strain")
## For geom_point(), this does not produce colors - need to rethink
