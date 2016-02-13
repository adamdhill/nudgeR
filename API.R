#install.packages("devtools")
library(devtools)
 
#devtools::install_github("joyofdata/RTwitterAPI")
library(RTwitterAPI)
 
 
params <- c(
  "oauth_consumer_key"     = "fzbcjBRjd48TJifhLAITlPf6c", 
  "oauth_nonce"            = NA,
  "oauth_signature_method" = "HMAC-SHA1",
  "oauth_timestamp"        = NA,
  "oauth_token"            = "2739148489-rVTN5u2G1ApIcAmgsjRLIZZ4ew2Lf9x921bn4kl",
  "oauth_version"          = "1.0",
  "consumer_secret"        = "9XdLtKKCbdRdKIjfKVaUpfsTsZ03hXVOsCkvMw9kDzDgen6iGG",
  "oauth_token_secret"     = "TimcSexPVV2Ws6ooRXyvinDqRAzpjZbXRgTk0KxsJfH4f"
);
 
url <- "https://api.twitter.com/1.1/search/tweets.json"

query <- c(q="default behavior")
 
result <- RTwitterAPI::twitter_api_call(url, query, params)



library(jsonlite)
library(httr)

#Set consumer_key and consumer_secret as environmental variables
consumer_key <- "...";
consumer_secret <- "...";
