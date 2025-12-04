# airGRdatasets: Hydro-Meteorological Catchments Datasets for the 'airGR' packages

## Overview

'airGRdatasets' provides metadata and catchment-scale aggregated hydro-meteorological time series on a pool of French catchments for use by the 'airGR' packages. 
More especially, it can be used by teachers and students for hydrological modeling exercises adapted to the 'airGRteaching' package, as described in [Delaigue et al. (2023)](https://doi.org/10.5194/hess-27-3293-2023) and in the 'airGRteaching' vignettes.

For more details:
``` r
?airGRdatasets
```

## Licence

[Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/legalcode.txt)

## Installation

### Release version

To install the version of the package that is on the CRAN, simply run:

``` r
install.packages("airGRdatasets")
```

### Unrelease version

To use the development version of the package available on GitLab, first install the 'remotes' package. 
Then you can install 'airGRdatasets' within the R environment:

``` r
install.packages("remotes")
remotes::install_gitlab(repo = "HYCAR-Hydro/airgrgalaxy/airgrdatasets", 
                        host = "https://gitlab.irstea.fr")
```
