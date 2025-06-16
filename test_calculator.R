library(testthat)
source("calculator.R")

test_that("correct sum of positive numbers", {
  expect_equal(calculate_sum("1,2,3"), 6)
})

test_that("correct sum with negatives", {
  expect_equal(calculate_sum("7,-7"), 0)
})

test_that("single number", {
  expect_equal(calculate_sum("42"), 42)
})

test_that("empty string returns 0", {
  expect_equal(calculate_sum(""), 0)
})

test_that("invalid input throws error", {
  expect_error(calculate_sum("1,a,3"), "Invalid input")
})
