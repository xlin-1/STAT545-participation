library("tidyverse")
library("gapminder")

gapminder

write_csv(gapminder, './gapminder.csv')
view(gapminder)

gapminder_sum <- gapminder %>% 
  group_by(continent) %>% 
  summarize(ave_life = mean(lifeExp))

view(gapminder_sum)
write_csv(gapminder_sum, here::here("gapminder_sum.csv"))

gapminder_sum %>% 
  ggplot(aes(x = continent, y = ave_life)) +
  geom_point() +
  theme_bw()

# read_csv can directly import URLs but read_excel requires you to firt download it.
here()
data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"
#old way: download.file(url = data_url, destfile = paste('./weeks_3_to_7/',greatestGivers.xls))

#Recommendation: use "basename"
file_name <- basename(data_url)

download.file(url = data_url, destfile = here::here("weeks_3_to_7", basename(data_url)))

library(readxl)
philanthropists <- read_excel(here::here("weeks_3_to_7", file_name),trim_ws = TRUE)              

view(philanthropists)

head(philanthropists)

mri_file = here("weeks_3_to_7", "Firas-MRI.xlsx")

mri <- read_excel(mri_file, range = "A1:L12")
view(mri)


mri <- mri[,-10]
view(mri) 

mri <- mri %>% 
  pivot_longer(cols = `Slice 1`:`Slice 8`,
               names_to = 'slice_no',
               values_to = 'value')

view(mri)
