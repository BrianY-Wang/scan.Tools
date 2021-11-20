<h1 align="center"> UBC Ecohydro s::can Spectrolyzer Tools Repository </h1>

<p align="center"> An R Package that improves workflow with using s::can spectrolyzer's default analyte output data format </p>

## Description

Following the guidance from STAT545 (UBC 2021W), this project will create functions into a package that can improve the workflow with using [S::Can spectro::lyser UV V2](https://www.s-can.at/products/spectrometer-probes) output datasets. 

For more information on this area of research: 

[UBC Ecohydrology](https://ecohydro.ires.ubc.ca/)

## Getting Started
### Dependencies
Raw spectrolyzer data used for the analysis can be found [here](https://github.com/stat545ubc-2021/functions-BrianY-Wang/tree/main/Raw_data)

This project utilized the following libraries, many thanks to the developers 🙏

[Tidyverse](https://cran.r-project.org/web/packages/tidyverse/index.html)

[roxygen2](https://cran.r-project.org/web/packages/roxygen2/index.html)

[testthat](https://cran.r-project.org/web/packages/testthat/index.html)

### Downloading the scan.Tools R package in R
Open RStudio and follow these steps:
1. Download devtools if needed 
```{r}
install.packages("devtools")
```
2. Import devtools package onto workspace
```{r}
library("devtools")
```
3. Install github R package using the following code:
```{r}
devtools::install_github("BrianY-Wang/scan.Tools")
```


### Cloning the repository to run R scripts and access raw data
To clone the R package repository onto your computer, follow these steps:
1. Open Terminal (Mac) or Console (Windows)
2. Change directory (cd) to a path where you want the repository to be downloaded 
3. Type in "git clone -https://github.com/BrianY-Wang/scan.Tools"
4. The repository should be downloaded and each script can now be opened locally with R (Version 1.4.1717 or above)


### Repository Contents
- B1 folder containing source script (.Rmd), readme and knitted files 
- Raw_data folder containing unprocessed data output by the spectrolyzers 
- ".gitignore"", ".DS_Store"" and ".Rproj files"" are github and Rproject related files 

## Author

[@BrianWang](wybobrian@gmail.com)

[Author Bio](https://ires.ubc.ca/person/brian-wang/)

[STAT545 Website](https://stat545.stat.ubc.ca/)

## Version History
- [x] Release 2: Assignment B2 - Making an R Package 
    - Meeting the deliverable specified in [Assignment B2](https://stat545.stat.ubc.ca/assignments/assignment-b2/)
    - Rendering documentations for all functions in the package with examples 
    - inclyde high level documentations (README, Descriptions)

- [x] Release 1: Assignment B1 - Making a functions 
    - Meeting the deliverable specified in [Assignment B1](https://stat545.stat.ubc.ca/assignments/assignment-b1/)
    - Made a function with examples 
    - Tested function output and input 
    

## Acknowledgments
Thank you to STAT545 TAs and instructor Vincenzo for their patience and feedback on this project. They have created a well supported environment for learning and provided a mentored opportunity to explore my own dataset. 

This project built upon and drew inspiration from the following repositories:  

* [A_simple_README_template](https://gist.github.com/DomPizzie/7a5ff55ffa9081f2de27c315f5018afc)

* [Best-README-Template](https://github.com/othneildrew/Best-README-Template)
