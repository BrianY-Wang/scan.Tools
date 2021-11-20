#' @title s::can spectrolyzer output dataset import and processing
#'
#' @description This function selects physically meaningful variables (Date/Time, turbidity, nitrate, toc, doc)
#' from the default output table of s::can spectrolyzers. This function will process them in a tidy way when
#' given the serial number of the spectroylyzer you want to import.Ensure the data file ".par" is present in
#' the Raw_data folder
#'
#' @param path
#' Provide the path to the ".par" dataset to be imported, wrapped in "".
#' If your dataset is still in ".fp" format, you need to visualize the fingerprint
#' through the Analyte software to be converted to ".par" format which is the parameter
#' file
#'
#' @param serialnumber
#' Provide the serial number of the spectrolyzer wrapped in "". This will be used to generate
#' a new column, named SN, populated with the provided serial number to follow the dataset
#'
#' @return A tibble of 6 columns with length equal the number of measurement the spectrolyzer performed
#'
#' @examples import("https://raw.githubusercontent.com/BrianY-Wang/foo/main/Raw_data/09210160.par", "09210160")
#'
#' @export
#'
# @import tidyverse read_delim
# @import lubridate
# @import here
#
# @importFrom tidyverse read_delim select mutate rename
# @importFrom lubridate ymd_hms



import <- function(path, serialnumber) {
  # Import required packages
   suppressPackageStartupMessages(library(tidyverse)) # for working with data-time objects
   suppressPackageStartupMessages(library(lubridate)) # for working with data-time objects

    x <- read_delim(path,show_col_types = FALSE)

  spec_tidy <- x  %>%
    select ("Date/Time",
            "Turbid. [FTUeq]200.00-0.00_2",
            "NO3-Neq [mg/l]10.00-0.00_2",
            "TOCeq [mg/l]25.00-0.00_2",
            "DOCeq [mg/l]12.00-0.00_2")  %>%
    mutate (SN = serialnumber, date = ymd_hms(`Date/Time`), 'Date/Time' = NULL)  %>%
    rename ('turbidity' = starts_with('Turbid.'),
            'nitrate' = starts_with('NO3-Neq'),
            'toc' = starts_with('TOCeq'),
            'doc' = starts_with('DOCeq'))
  return (spec_tidy)}

