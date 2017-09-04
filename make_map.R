

require(magrittr)
require(tidyverse)
require(ggmap)


us <- c(left = -105, bottom = 12, right = -95, top = 33)
# map <- get_stamenmap(us, zoom = 3, maptype = "toner")
# map <- get_stamenmap(us, zoom = 5, maptype = "toner-lite")
map <- get_stamenmap(us, zoom = 6, maptype = "toner-lite")
# ggmap(get_stamenmap(us, zoom = 7, maptype = "toner-lines"))

map <- get_map(us, zoom=6, maptype="hybrid", source = "google")



# install.packages("ggmap", type = "source")

ggmap(map)

# put coordinates and fish names here
df <- tibble::frame_data(~long, ~lat, ~country, ~location, ~lab, ~type, ~site,
             -97, 25.9, "US", "Brownsville TX", "Poecilia latipinna", "low", 2,
             -97, 25.9,"US", "Brownsville TX", "Gambusia affinis", "high",2,
             -100.9, 22.1, "Mexico", "Nac. Rio Choy SLP", "Gambusia vitatta", "high",3,
             -100.9, 22.1, "Mexico","Nac. Rio Choy SLP","Xiphophorus nigrensis", "low",3,
             -96.324, 19.32, "Mexico", "R. La Antigua VER", "Xiphophorus hellerii", "low", 8,
             -96.324, 19.32, "Mexico","R. La Antigua VER", "Heterandria bimaculata", "high", 8
             )


# source("~/Documents/random_scripts/plotting_functions.R")
require(ggrepel)
ggmap(map) +
  geom_point(data = df, aes(x = long, y = lat)) +
  geom_point(size = 2, color = "white") +
  theme_light() +
  # geom_text_repel(data = df, mapping = aes(x = long, y = lat, label = lab, color = type),  size = 5, force = 2, box.padding = unit(1, 'lines')) +
  # scale_color_base(name = "potential for sexual conflict", guide = F) +
  labs(x = "longitude", y = "latitude")
  
ggsave("~/Desktop/map2.pdf")
