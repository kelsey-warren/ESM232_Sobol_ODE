#' Forest growth in units of Carbon derivative
#' calculates rate of growth of forest size (units of Carbon)
#' 
#' @param time time since start
#' @param Fparms - as list with values r, g, K, Cthresh
#' @param r exponential growth rate before canopy closure
#' @param Ca forest size (kg C)
#' @param g linear growth rate after canopy closure
#' @param K forest size carrying capacity 
#' @param Cthresh threshold of canopy closure


#' @return derivative of forest growth with time

dforest <- function(time, C, Fparms) {
  dC <- ifelse(C<Fparms$Cthresh, Fparms$r*C, Fparms$g*(1-(C/Fparms$K)))
  return(list(dC))
}






