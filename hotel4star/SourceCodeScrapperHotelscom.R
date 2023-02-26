library(dplyr)
library(rvest)
library(stringi)
library(tidyr)
library(tidyverse)

getwd()
setwd("E:\\Learn\\Learn R Programming\\hotels.com\\New")

#scrapper hotel.com
scrapper_hotels.com <- function(puturl){
  hotels_webpage <- read_html(puturl)
  hotels_webpage
  
  #comments
  review_hotels <- html_nodes(hotels_webpage,'.expandable-content')
  reviewsH <- html_text(review_hotels)
  review_hotel_bersih1 <- gsub("\n"," ",reviewsH)
  review_hotel_bersih2 <- gsub("\r"," ",review_hotel_bersih1)
  review_comment <- gsub("\ "," ",review_hotel_bersih2)
  
  #ratingscore
  rating_score_mentah <- html_nodes(hotels_webpage,'.rating-score')
  rating_score_jadi <- html_text(rating_score_mentah)
  rating_score_score <- gsub("\""," ",rating_score_jadi)
  rating_score <- data.frame(rating_score_score)
  rating_score$id <- c(1:51)
  rating_score <- rating_score[-c(1),]
  rating_score <- rating_score[,-c(rating_score$id)]
  
  #ratingbadge
  rating_badge_mentah <- html_nodes(hotels_webpage,'.rating-badge')
  rating_badge_text <- html_text(rating_badge_mentah)
  rating_badge <- gsub("\""," ",rating_badge_text)
  
  #typetripnights
  night_type_mentah <- html_nodes(hotels_webpage,'.trip-type-nights')
  night_type <- html_text(night_type_mentah)
  
  #checkin
  date <- html_nodes(hotels_webpage,'.date')
  date_text <- html_text(date)
  date_jadi <- gsub("Check-in"," ",date_text)
  
  #country
  flags_kotor <-  hotels_webpage %>%
    html_nodes(".meta") %>%
    html_nodes("img") %>%
    html_attr("src")
    flags_bersih <- gsub("https://a.cdn-hotels.com/uswest2/da/assets/s/63.0.10257/images/common/flags/","",flags_kotor)
    flags <- gsub(".png","",flags_bersih)
  
  df <- data.frame(flags,review_comment,rating_badge,rating_score,date_jadi,night_type)
  colnames(df) <- c("country","comments","ratingbadge","ratingscore","checkin","typetripnights")
  return(df)  
}

#contoh penggunaan
#namadataframe <- scrapper_hotels.com('https://www.hotels.com/ho471490-tr/?q-check-in=2020-07-05&q-check-out=2020-07-06&q-rooms=1&q-room-0-adults=2&SYE=3&ZSX=0&MGT=1&YGF=1&WOD=7&WOE=1&applyEmbargo=false&reviewTab=brand-reviews')
#write.csv(namadataframe,"namafile.csv")

