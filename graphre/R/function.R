#' @title Scatterplot for two Numeric Variables
#'
#' @description
#'  This function creates a scatterplot to demonstrate the relationship between two numeric variables.
#'
#' @param x A numeric vector, I name it x because it represents the x-axis values.
#' @param y A numeric vector that must have the same length with x. I name it y because it represents the y-axis values
#' @return A graph "ggplot", a scatter plot of the two variables
#' @import ggplot2
#' @examples
#' #Create a scatter plot for two variables x and y
#' x <- c(43,23,78,100,88,65,49)
#' y <- c(19,20,34,54,33,24,12)
#' graph_relation(x,y)
#' #Create a scatter plot for two variables a and b
#' a <- rnorm(20,mean=5, sd=1)
#' b <- rnorm(20, mean=10, sd=2)
#' graph_relation(a,b)
#' @export


graph_relation <- function(x,y){
  if(!is.numeric(x)&&!is.numeric(y)){
    stop("Sorry, at least one of your variables is not numeric input")
  } #check whether the class of variables is numeric
  if(length(x)!=length(y)){
    stop("Sorry, the number of elements in two variables do not match")
  } #check whether the number of elements in two variables match
  data=data.frame(x=x,y=y)
  graph <- ggplot2::ggplot(data,aes(x=x, y=y))+
    geom_point(aes(x=x,y=y),alpha=0.7)
  return(graph)
}


