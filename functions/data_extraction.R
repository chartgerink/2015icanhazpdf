if(!require(devtools)){install.packages('devtools')}
if(!require(magrittr)){install.packages('magrittr')}
if(!require(curl)){install.packages('curl')}
if(!require(googlesheets)){install_github('jennybc/googlesheets')}
library(devtools)
library(magrittr)
library(curl)
library(googlesheets)


link = "https://docs.google.com/spreadsheets/d/1OXMHv6lal_GiMneW4xHa2wvG4BzTyD41zcCnmfF6PUY/edit?usp=sharing"
dat <- gs_url(link) %>% gs_read_csv()

# Remove all missing `firsturl` (August 19, 2015; remark 1)
missing.firsturl <- grep("ifttt.com/missing_link", dat$firsturl)
dat$firsturl[missing.firsturl] <- NA

# Remove duplicates
dat <- dat[!duplicated(dat$twt), ]
# Remove retweets
dat <- dat[grepl(pattern = "RT @.*: .*", dat$twt), ]

write.table(dat, 'data/data.csv', sep = ';', dec = '.', row.names = FALSE)