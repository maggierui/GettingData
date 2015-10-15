df <- read.fwf(
  file=url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),
  widths=c(-1,9,-5,4,4,-5,4,4,-5,4,4,-5,4,4),
  skip=4
)
## or using the new package readr
x <- read_fwf(
  file=url("https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"),
  skip=4,
  fwf_widths(c(12, 7,4, 9,4, 9,4, 9,4)))
sum(x$X4)