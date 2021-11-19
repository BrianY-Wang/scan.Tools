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
#' @examples import("/Desktop/Raw_data/09210160.par")
#'
#' @export

import <- function(path, serialnumber) {
  # Import required packages
  library(tidyverse) # for working with data-time objects
  library(lubridate) # for working with data-time objects
  library(here)      # for importing via relative path

    x <- read_delim(path,show_col_types = FALSE)

  spec_tidy <- x  %>%
    #follows sensor's default output format ordering and neglect system operation parameters
    select (1,3,5,7,9)  %>%
    mutate (SN = serialnumber, date = ymd_hms(`Date/Time`), 'Date/Time' = NULL)  %>%
    rename ('turbidity' = starts_with('Turbid.'),
            'nitrate' = starts_with('NO3-Neq'),
            'toc' = starts_with('TOCeq'),
            'doc' = starts_with('DOCeq'))
  return (spec_tidy)}

