To-do from notes:
- [x] Remove duplicates (August 18, 2015; remark 2)
- [x] Remove retweets (August 18, 2015; remark 3); i.e., remove when a tweet is part of another tweet, but not a direct duplicate
- [x] Check all tweets with link that link *is* actually a request (August 18, 2015; remark 3)
- [x] Check all tweets without a link whether it does include a request (August 18, 2015; remark 3)
- [x] Remove all missing `firsturl` (August 19, 2015; remark 1)

# August 18, 2015
1. Got idea to do this project. Will be logging `#icanhazpdf` tweets with [If This Then That](ifttt.com) recipe. This was activated at 12.43PM. The idea is to log the requests, then check whether they are available via e.g. [Sci-hub](sci-hub.org). Additionally, it could be checked whether they adhere to the #icanhazpdf etiquette, but this is optional.
2. I already note that retweets are also incorporated and cause duplicates. Needs to be taken into account when finished project.
3. Also, not all tweets contain links. BUT not all requests include a link or tweets with #icanhazpdf are requests. Need to manually check these (that's going to be much manual labor...)
4. Adjusted the IFTTT recipe a bit, forgot to separate final two columns
5. To add to remark 2: note that tweets are retweeted and duplicate is therefore also when a tweet occurs as part of another tweet.

# August 19, 2015
1. Need to remove `firsturl` from tweets that have no url at all. These contain `ifttt.com/missing_link`.