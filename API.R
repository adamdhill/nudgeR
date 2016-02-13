library(jsonlite)
library(httr)




#Auth
secret <- RCurl::base64(paste(consumer_key, consumer_secret, sep = ":"));
req <- POST("https://api.twitter.com/oauth2/token",
  add_headers(
    "Authorization" = paste("Basic", secret),
    "Content-Type" = "application/x-www-form-urlencoded;charset=UTF-8"
  ),
  body = "grant_type=client_credentials"
);

#Get access token
token <- paste("Bearer", content(req)$access_token)

