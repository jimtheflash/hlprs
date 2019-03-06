convert_digits_to_words <- function(x) {
  output <- as.character(x)
  output <- gsub("0", "zero", output)
  output <- gsub("1", "one", output)
  output <- gsub("2", "two", output)
  output <- gsub("3", "three", output)
  output <- gsub("4", "four", output)
  output <- gsub("5", "five", output)
  output <- gsub("6", "six", output)
  output <- gsub("7", "seven", output)
  output <- gsub("8", "eight", output)
  output <- gsub("9", "nine", output)
  return(output)
}