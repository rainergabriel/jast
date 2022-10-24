
# define here your way to read in the main dataset that you want to display
# attention: don't put any credentials in the code that you add to git
read_data_redcap <- function() {
  # example: reading from REDCap
  df <- NULL
  df <- read_from_redcap(Sys.getenv("redcap_url"), Sys.getenv("redcap_api_token"))
  return(df)
}

read_data_csv <- function() {
  df <- read.csv2("data/DemoFeedbackWithShin_DATA.csv", sep=",")
  return(df)
}

# get the id from the URL
# such parameters are found in the URL after the ?
# for example: https://url-to-shiny-app.ch/?id=42
get_id <- function(session){
  query <- parseQueryString(session$clientData$url_search)
  if (!is.null(query[['id']])) {
    return(query[['id']])
  } else {
    return(0)
  }
}