To-do from notes:
- [x] Remove duplicates (August 18, 2015; remark 2)
- [x] Remove retweets (August 18, 2015; remark 3); i.e., remove when a tweet is part of another tweet, but not a direct duplicate
- [x] Check all tweets with link that link *is* actually a request (August 18, 2015; remark 3)
- [x] Check all tweets without a link whether it does include a request (August 18, 2015; remark 3)
- [x] Remove all missing `firsturl` (August 19, 2015; remark 1)
- [x] Reshape `time` variable to ISO format YYYYMMDD

# August 18, 2015
1. Got idea to do this project. Will be logging `#icanhazpdf` tweets with [If This Then That](ifttt.com) recipe. This was activated at 12.43PM. The idea is to log the requests, then check whether they are available via e.g. [Sci-hub](sci-hub.org). Additionally, it could be checked whether they adhere to the #icanhazpdf etiquette, but this is optional.
2. I already note that retweets are also incorporated and cause duplicates. Needs to be taken into account when finished project.
3. Also, not all tweets contain links. BUT not all requests include a link or tweets with #icanhazpdf are requests. Need to manually check these (that's going to be much manual labor...)
4. Adjusted the IFTTT recipe a bit, forgot to separate final two columns
5. To add to remark 2: note that tweets are retweeted and duplicate is therefore also when a tweet occurs as part of another tweet.

# August 19, 2015
1. Need to remove `firsturl` from tweets that have no url at all. These contain `ifttt.com/missing_link`.

# September 2, 2015
1. The first #icanhazpdf tweet available [here](https://twitter.com/AndreaKuszewski/status/28257118322688000), from January 21, 2011.

# September 14, 2015
1. Some of the logged tweets noted that `#canihazpdf` is used concurrently with `#icanhazpdf`. I searched for tweets using `#canihazpdf` and there are only few tweets dispersed over reasonable amounts of time. I will keep the focus on `#icanhazpdf`.

# December 12, 2015
1. Downloaded the Google sheets files in xlsx, converted them to csv and joined them with `cat data/raw*/*.csv > data/raw_2015-12-12.csv`. These are not pushed to git for privacy of the original requesters.
2. Some things for coding.

  1. Request split over multiple tweets? Code one of the N tweets, the one with the link, or the majority of the title requested.
  2. Link + email = request

3. Had to redownload because I forgot to concatenate the august-september requests from a different sheet, sent it to marino.

# February 20, 2016
1. mzelst and chjh both coded.
2. chjh missed a few... Coded them accordingly (not independent anymore though, 3 tweets)
3. 
