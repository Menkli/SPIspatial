# Calculates SPI for the whole of Austria
#' Calculates SPI for every layer of raster brick
#'
#' @param brick Output brick from the build_brick function
#' @param timescale From SPEI::spi. an integer, representing the time scale at which the SPEI / SPI will be computed.
#' @param start When was the first measurement in the dataset? A vector with two numbers: e.g. c(1970, 1)
#' @param frequency integer. If the timespan covered in the dataset are month, then use 12.
#' @param ref.start When does the reference period start? A vector of two numbers: e.g. c (1980, 1)
#' @param ref.end When does the reference period end? A vector of two numbers: e.g. c (2010, 1)
#' @return A raster brick
#' @export
#'
#' @examples
SPIspatial <- function(brick, timescale, start, frequency, ref.start, ref.end){

calc(brick, fun = function(x, scale = timescale, na.rm = TRUE) {
  xts <- ts (x, start=start, frequency=frequency)
  as.numeric((SPEI::spi(xts, scale = scale, na.rm = na.rm, ref.start = ref.start, ref.end = ref.end))$fitted)
})

}
