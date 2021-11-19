# Test 1 on function output dataset
test_NumberofColumns <- test_that("Testing if the output tibble has the right number of columns", {
  expect_length(import("https://raw.githubusercontent.com/BrianY-Wang/foo/main/Raw_data/09210160.par","09210160"), 6)})

# Test 2 on spec2 output dataset
spec2 <- import("https://raw.githubusercontent.com/BrianY-Wang/foo/main/Raw_data/09210160.par","09210160")

test_SNColumn <- test_that("Testing if the output tibble's serial number column is 8 characters in length", {
   expect_equal(nchar(spec2$SN[1]), 8)})

# Test 3a on import function with incorrect path provided
test_inputPathError <- test_that("if the function throws an error when input path is incorrect", {
  expect_error(import("AAAAAA","09210160"))})
