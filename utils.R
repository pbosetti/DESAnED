if (!exists("read_file")) {
  if (!require(readr)) {
    stop("Please install readr (or tidyverse) package")
  }
}
sample_files <- function(file_name, show=FALSE) {
  url = paste0("https://gist.githubusercontent.com/pbosetti/4e431d369af33b8e8aabd0464d515165/raw/6f696f55fd53054409d941bac633e9f5214c8251/", file_name)
  if (show) {
    txt = read_file(url)
    cat(txt)
    invisible(read_file(url))
  } else {
    return(url)
  }
}