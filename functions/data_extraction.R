if(!require(devtools)){install.packages('devtools')}
if(!require(magrittr)){install.packages('magrittr')}
if(!require(curl)){install.packages('curl')}
library(devtools)
library(magrittr)
library(curl)

source('functions/month_numeric.R')

date <- '2015-12-12'

dat <- read.csv(sprintf('data/raw_%s.csv', date), header = FALSE)

names(dat) <- c('firsturl',
                'link',
                'date',
                'twt')

# Remove all missing `firsturl` (August 19, 2015; remark 1)
missing.firsturl <- grep("ifttt.com/missing_link", dat$firsturl)
dat$firsturl[missing.firsturl] <- NA

# Remove duplicates (August 18, 2015; remark 2)
dat <- dat[!duplicated(dat$twt), ]
# Remove retweets (August 18, 2015; remark 3)
dat <- dat[!grepl(pattern = "^rt", dat$twt, ignore.case = TRUE), ]

dat$request <- NA

write.csv(dat, sprintf('data/raw_%s_partial.csv', date), row.names = FALSE)

dat <- read.csv(sprintf('data/raw_%s_partial.csv', date))
# Remove all tweets that are no request (August 18, 2015; remark 3)
dat <- dat[dat$request == 1, ]
# Remove the $request
dat <- dat[, -dim(dat)[2]]

# Reshape time var to ISO format
for(i in 1:length(dat$time)){
  y = substr(dat$time[i],
             start = gregexpr(' ', dat$time[i])[[1]][2] + 1,
             gregexpr(' ', dat$time[i])[[1]][3] - 1)
  m = month_numeric(substr(dat$time[i],
             start = 0,
             gregexpr(' ', dat$time[i])[[1]][1] - 1))
  d = substr(dat$time[i],
             start = gregexpr(' ', dat$time[i])[[1]][1] + 1,
             gregexpr(',', dat$time[i])[[1]][1] - 1)
  dat$time[i] = paste0(y, m, d)
}

dat$time
write.table(dat, 'data/coding.csv', row.names = FALSE, sep = ',', dec = '.')
# gs_url(link) %>% gs_edit_cells(dat, ws = "coding", anchor = "A1")
