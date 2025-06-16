# R Calculator REST API

This project provides a simple REST API in R that **adds comma-separated numbers** and returns their sum in JSON format.

---

## Getting Started

### Prerequisites

Make sure you have R installed on your system. You can download it from [CRAN](https://cran.r-project.org/).

---

### Required R Packages

You will need the following packages:

- `plumber` — to create the REST API  
- `testthat` — to run unit tests

---

### Installing Packages

Open your R console or RStudio and run:

```r
install.packages(c("plumber", "testthat"))
```

---

## Running the REST API

1. Open R and set your working directory to where your files are saved:

```r
setwd("path/to/your/project/folder")
```

2. Load plumber and run the API:

```r
library(plumber)

# Source the plumber API script
pr <- plumb("plumber.R")

# Run the API on port 8000
pr$run(port = 8000)
```

3. The API will be accessible at:

```
http://localhost:8000/calculator/add?operands=1,2,3
```

Example response:

```json
{ "sum": 6 }
```

---

## Running Unit Tests

1. Make sure `testthat` is installed and loaded:

```r
library(testthat)
```

2. Run the test file:

```r
test_file("test_calculator.R")
```

You should see a summary of test results.

---

## Project Files

| File              | Description                           |
|-------------------|-------------------------------------|
| `calculator.R`    | Core sum calculation logic           |
| `plumber.R`       | REST API definition with plumber     |
| `test_calculator.R` | Unit tests for the calculator logic |
| `README.md`       | This documentation file              |

---

## Example Usage

| Input (operands) | Output            |
|------------------|-------------------|
| `7,-7`           | `{ "sum": 0 }`    |
| `1,2,3`          | `{ "sum": 6 }`    |
| `42`             | `{ "sum": 42 }`   |
| (empty)          | `{ "sum": 0 }`    |

Invalid input returns an error JSON response:

```json
{ "error": "Invalid input. Please enter comma-separated numeric values." }
```

---

## Summary

- REST API implemented in R using `plumber`  
- Core logic separated in `calculator.R`  
- Unit tests with `testthat`  
- Easy to extend for other operations or inputs  

---
