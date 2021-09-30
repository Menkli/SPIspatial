#' Builds a raster brick from an netCDF object
#'
#' @param x The length of the raster brick in its x dimension. Can be read from the netCDF info.
#' @param y The length of the raster brick in its y dimension. Can be read from the netCDF info.
#' @param z The length of the brick in its time dimension (number of brick layers).
#'
#' @return
#' @export
#'
#' @examples
build_brick <- function (x, y, z){
# Reading the precipitation data for the vegetation months.
# We have 575 x/lon and 297 y/lat values. 1572 is the original number of timesteps (including the whole year).
prec_array <- ncdf4::ncvar_get(ncin, "pr", c(1,1,1,1), c(x,y,z,1))
ncdf4::nc_close(ncin)

# Creating an empty brick with 297 rows, 575 columns and 786 layers (6 vegetation months ? 131 years)
raster::brick(nrows=y, ncols=x, xmn=min(lon), xmx=max(lon), ymn=min(lat), ymx=max(lat), nl=z, crs=4326)
}
