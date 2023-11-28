# installing libraries
library(devtools)
devtools::install_github("sachit27/greenR", dependencies = TRUE)
devtools::install_github("ropensci/osmdata")

# importing libraries
library(greenR)
library(sf)
library(tidyverse)

# BALIKPAPAN
# acquire the data
bp <- get_osm_data("Balikpapan, Indonesia")

#calculate the green index
gi_bp <- calculate_green_index(bp, 4326, 100)
per_bp <- calculate_percentage(gi_bp)

#export in json
save_json(gi_bp, "output/balikpapan_green_index.json")

# SURABAYA
# acquire the data
sura <- get_osm_data("Surabaya, Indonesia")

#calculate the green index
gi_sura <- calculate_green_index(sura, 4326, 100)
per_sura <- calculate_percentage(gi_sura)

#export in json
save_json(gi_sura, "output/surabaya_green_index.json")

# JEPARA
# acquire the data
jep <- get_osm_data("Jepara, Indonesia")

#calculate the green index
gi_jep <- calculate_green_index(jep, 4326, 100)
per_jep <- calculate_percentage(gi_jep)

#export in json
save_json(gi_jep, "output/jepara_green_index.json")


