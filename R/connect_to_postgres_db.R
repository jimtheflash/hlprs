#' Connect to a PostgreSQL db
#' @param .dbname character name of dt
#' @param .host character host name, defaults to "localhost"
#' @param .port integer port number, defaults to 5432
#' @param .user character username
#' @param .password character password
#' @return connection object
#' @export
connect_to_postgres_db <- function(.dbname = NULL,
                                   .host = "localhost",
                                   .port = 5432,
                                   .user = NULL, 
                                   .password = NULL) {
  # these functions all come same library, and it likes to be fully imported
  library(RPostgreSQL)
  drv <- dbDriver("PostgreSQL")
  con <- dbConnect(drv,
                   dbname = .dbname,
                   host = .host,
                   port = .port,
                   user = .user,
                   password = .password)
  return(con)
}
