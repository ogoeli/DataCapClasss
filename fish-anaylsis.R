library(dplyr)

download.file("https://datacarpentry.org/semester-biology/data/Gaeta_etal_CLC_data.csv", "Gaeta_etal_CLC_data")
fish_data <- read.csv("Gaeta_etal_CLC_data.csv")

fish_data_cat <- fish_data |>
  mutate(length_cat <- ifelse(length > 300, "big", "small"))
