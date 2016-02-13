library(devtools)
library(RTwitterAPI)
library(jsonlite)

#Set authentication tokens as environmental variables
 "oauth_consumer_key" = "[...]"
 "oauth_token" = "[...]"
 "consumer_secret" = "[...]"
 "oauth_token_secret"     = "[...]"
 
params <- c(
  "oauth_consumer_key"     = "...", 
  "oauth_nonce"            = NA,
  "oauth_signature_method" = "HMAC-SHA1",
  "oauth_timestamp"        = NA,
  "oauth_token"            = "...",
  "oauth_version"          = "1.0",
  "consumer_secret"        = "...",
  "oauth_token_secret"     = "..."
);
 
url <- "https://api.twitter.com/1.1/search/tweets.json"

query <- c(q="default behavior")
 
result <- RTwitterAPI::twitter_api_call(url, query, params)


