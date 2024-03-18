# This file provides base utilities

# Check for requirements
if (!exists("read_file")) {
  if (!require(readr)) {
    stop("Please install readr (or tidyverse) package")
  }
}

#' Get the url for sample files from gist repo
#'
#' @param file_name The name of the file under the gist folder
#' @param show If TRUE, shows the raw file content and returns the URL invisibly
#' @examples
#' url <- sample_files("duplicate.csv", show=T)
#' df <- read.csv(url)
sample_files <- function(file_name, show=FALSE) {
  url = paste0("https://gist.githubusercontent.com/pbosetti/4e431d369af33b8e8aabd0464d515165/raw/6f696f55fd53054409d941bac633e9f5214c8251/", file_name)
  if (show) {
    txt = read_file(url)
    cat(txt)
    invisible(url)
  } else {
    return(url)
  }
}