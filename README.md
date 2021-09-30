
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Installation

You can install the released version of SPIspatial from Github with:

``` r
devtools::install_github("SPIspatial")
```

# SPIspatial

This package contains three functions that should be used in consecutive
order:

## load\_ncdf

Can be used to load a netCDF file and prints its metadata to the
console.

## build\_brick

It builds a raster brick from the loaded netCDF. The dimensions of the
brick (x,y,z) must be read by the user from the metadata printed by
load\_ncdf. It populates each cell in the brick with the data contained
in the netCDF, usually precipitation data.

## SPIspatial

It calculates the SPI for each timestep in every cell. When the input
brick has 100 layers (z-dimension), the resulting SPI raster brick will
also consist of about 100 layers (sometimes diverging due to
parametrization).
