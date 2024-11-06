test_that("test graph_relation function",{
    #test 1: vector with no NA's, expect to show scatterplot
    x1 <- rnorm(10,mean=5, sd=1)
    x2 <- rnorm(10, mean=8, sd=1.5)
    expect_s3_class(graph_relation(x1,x2),"ggplot")
    #test 2: vector that has NA's, expect to show scatterplot
    x3 <- c(1,2,3,4,NA,6)
    x4 <- c(2,3,4,5,6,NA)
    expect_s3_class(graph_relation(x3,x4),"ggplot")
    #test 3: vector of a different type, expect to show error
    x5 <- c("a","b","c")
    x6 <- c("d","e","f")
    expect_error(graph_relation(x5,x6),"Sorry, at least one of your variables is not numeric input")
})

