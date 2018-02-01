## deja vu from yesterday!
library(tidyverse)
library(readxl)
library(here)
## create a data frame of your installed packages
ipt <- installed.packages() %>%
  as_tibble() %>%
  select(Package:Priority, Built)
## keep the variables
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

ipt$vnum <- str_extract(ipt$Version,"^\\d") # pulls first digit of version #
table(ipt$vnum)

write_excel_csv(ipt, here('data/installed-packages.csv'))

## write it to data/installed-packages.csv
## YES overwrite the file that is there now
## that came from me (Jenny)
## it an example of what yours should look like

## when this script works, stage & commit it and the csv file
## PUSH!
