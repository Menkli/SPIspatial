
#' SPI spatial calculator
#'
#' @param path The local path to where the nedCDF file is located
#' @param filename The filename of the netCDF. Must include the ending ".nc"

#'
#' @return Returns a netCDF object and prints its respective metadata
#' @export
#'
#'
#'
load_ncdf <- function(path, filename){
  ncpath <- path
  ncname <- filename
  ncfname <- paste0(ncpath, ncname)

  ncin <- ncdf4::nc_open(ncfname)
  print(ncin)

  lon <- ncdf4::ncvar_get(ncin,"lon")
  lat <- ncdf4::ncvar_get(ncin,"lat")
}



