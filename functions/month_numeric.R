month_numeric <- function(x){
  if(x == "January")
    month_number <- "01"
  if(x == "February")
    month_number <- "02"
  if(x == "March")
    month_number <- "03"
  if(x == "April")
    month_number <- "04"
  if(x == "May")
    month_number <- "05"
  if(x == "June")
    month_number <- "06"
  if(x == "July")
    month_number <- "07"
  if(x == "August")
    month_number <- "08"
  if(x == "September")
    month_number <- "09"
  if(x == "October")
    month_number <- "10"
  if(x == "November")
    month_number <- "11"
  if(x == "December")
    month_number <- "12"
  
  return(month_number)
}