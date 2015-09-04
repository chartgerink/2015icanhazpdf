if(!require(devtools)){install.packages('devtools')}
if(!require(magrittr)){install.packages('magrittr')}
if(!require(curl)){install.packages('curl')}
if(!require(googlesheets)){install_github('jennybc/googlesheets')}
library(devtools)
library(magrittr)
library(curl)
library(googlesheets)

link = "https://docs.google.com/spreadsheets/d/1OXMHv6lal_GiMneW4xHa2wvG4BzTyD41zcCnmfF6PUY/pub?output=csv"
dat <- gs_url(link) %>% gs_read_csv(ws = "raw")

# Remove all missing `firsturl` (August 19, 2015; remark 1)
missing.firsturl <- grep("ifttt.com/missing_link", dat$firsturl)
dat$firsturl[missing.firsturl] <- NA

# Remove duplicates (August 18, 2015; remark 2)
dat <- dat[!duplicated(dat$twt), ]
# Remove retweets (August 18, 2015; remark 3)
dat <- dat[!grepl(pattern = "RT @.*: .*", dat$twt), ]

# Remove all tweets that are no request (August 18, 2015; remark 3)
dat <- dat[dat$request == 1, ]
# Remove the $request
dat <- dat[, -dim(dat)[2]]

write.table(dat, 'data/coding.csv', row.names = FALSE, sep = ',', dec = '.')
# gs_url(link) %>% gs_edit_cells(dat, ws = "coding", anchor = "A1")
