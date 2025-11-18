\docType{data}
\encoding{UTF-8}


\name{lumped_daily}
\alias{lumped_daily}
\alias{A273011002}
\alias{A605102001}
\alias{B222001001}
\alias{E540031001}
\alias{E645651001}
\alias{H010002001}
\alias{H120101001}
\alias{F439000101}
\alias{H622101001}
\alias{J171171001}
\alias{J421191001}
\alias{K134181001}
\alias{K265401001}
\alias{K731261001}
\alias{V123521001}
\alias{X031001001}
\alias{X045401001}
\alias{Y643401001}
\alias{Y862000101}


\usage{
A273011002
A605102001
B222001001
E540031001
E645651001
H010002001
H120101001
F439000101
H622101001
J171171001
J421191001
K134181001
K265401001
K731261001
V123521001
X031001001
X045401001
Y643401001
Y862000101
}


\title{Metadata and daily time series of catchment-scale hydro-meteorological observations}


\description{
Meteorological forcing is derived from the SAFRAN reanalysis (8 km resolution grid) produced by Météo-France (Quintana-Seguí et al., 2008; Vidal et al., 2010).

Meteorological forcing is aggregated at the catchment scale and merged with streamflow data within the CAMELS-FR database from INRAE (Delaigue et al., 2024; Delaigue et al., 2025). To accomplish this, catchment boundaries, area, and elevation are determined using two digital terrain models (DTMs).
For continental metropolitan France, we used the 100 m × 100 m resolution DTM from the Shuttle Radar Topography Mission (SRTM) project (Rabus et al., 2003; Farr et al., 2007), while for Corsica, the BD ALTI v1.0 with 25 m × 25 m resolution from IGN (2001) was employed.
Stations were snapped to a theoretical river network derived from the DTMs, with flow directions constrained using the stream-burning method and the CARTHAGE river network (French water agencies, 2017) after channel removal.

The streamflow data, as well as the codes and names of hydrometric stations, are provided by SCHAPI (the French Central Hydrometeorological and Flood Forecasting Support Service) via the Hydroportail website (SCHAPI, 2022).
Streamflows are converted to mm/d using the DEM-based catchment area
}


\format{
[list] of 3 elements: \cr\cr
  \code{Meta} [list] metadata
  \itemize{
    \item \code{Code} [list] of 2 [character] codes of the hydrometric station (\code{H3}: code since 2022, \code{H2}: former code)
    \item \code{Name} [character] name of the hydrometric station (H3)
    \item \code{Coor} [list] of 2 [numeric] coordinates (\code{X} and \code{Y}) of the catchment outlet [decimal degrees; epsg: 4326]
    \item \code{Area} [numeric] area of the catchment [km²]
  }
  \code{TS} [data.frame] catchment daily time series from 1999-01-01 to 2018-12-31
  \itemize{
    \item \code{Date} [POSIXct] dates (timezone = "UTC")
    \item \code{Ptot} [numeric] total precipitation (liquid + solid) [mm/d]
    \item \code{Temp} [numeric] mean air temperature [°C]
    \item \code{Evap} [numeric] total potential evapotranspiration computed with Oudin's Formula (Oudin et al., 2005)
    \item \code{Qls}  [numeric] outlet streamflow [l/s]
    \item \code{Qmmd} [numeric] outlet streamflow [mm/d]
  }
  \code{Hypso} [numeric] hypsometric values (101 quantiles from 0 to 100 \% of the elevation range of the catchment) [m]
}


\note{
List of available catchments:
  \tabular{lcl}{
    \code{station_code} \tab \code{id_map} \tab \code{station_name} \cr
    \code{A273011002} \tab \code{A} \tab the Bruche at Russ [Wisches] \cr
    \code{A605102001} \tab \code{B} \tab the Meurthe at Saint-Dié-des-Vosges \cr
    \code{B222001001} \tab \code{C} \tab the Meuse at Saint-Mihiel \cr
    \code{E540031001} \tab \code{D} \tab the Canche at Brimeux \cr
    \code{E645651001} \tab \code{E} \tab the Nièvre at Étoile \cr
    \code{F439000101} \tab \code{F} \tab the Loing at Épisy \cr
    \code{H010002001} \tab \code{G} \tab the Seine at Plaines-Saint-Lange \cr
    \code{H120101001} \tab \code{H} \tab the Aube at Bar-sur-Aube \cr
    \code{H622101001} \tab \code{I} \tab the Aisne at Givry \cr
    \code{J171171001} \tab \code{J} \tab the Trieux at Saint-Péver - Pont Locminé \cr
    \code{J421191001} \tab \code{K} \tab the Odet at Ergué-Gabéric - Treodet \cr
    \code{K134181001} \tab \code{L} \tab the Arroux at Rigny-sur-Arroux \cr
    \code{K265401001} \tab \code{M} \tab the Couze Pavin at Saint-Floret \cr
    \code{K731261001} \tab \code{N} \tab the Indre at Saint-Cyran-du-Jambot \cr
    \code{V123521001} \tab \code{O} \tab the Ire at Doussard \cr
    \code{X031001001} \tab \code{P} \tab the Durance at Embrun [La Clapière] - DREAL PACA \cr
    \code{X045401001} \tab \code{Q} \tab the Ubaye at Lauzet-Ubaye [Roche-Rousse] - DREAL PACA \cr
    \code{Y643401001} \tab \code{R} \tab the Esteron at Broc [La Clave] \cr
    \code{Y862000101} \tab \code{S} \tab the Taravo at Zigliara [Pont d'Abra] \cr
  }
  \if{html}{\figure{airGRdatasets-map-catchments.png}{options: style="width: 60\%;" alt="Figure: airGRdatasets-map-catchments.png"}}
  \if{latex}{\figure{airGRdatasets-map-catchments.png}{options: width=6cm}}
}



\source{
Delaigue, O., Guimarães, G. M., Brigode, P., Génot, B., Perrin, C., and Andréassian, V. (2024).
  CAMELS-FR dataset, V1,
  Recherche Data Gouv [data set],
  \doi{10.57745/WH7FJR}.
}

\references{
Delaigue, O., Guimarães, G. M., Brigode, P., Génot, B., Perrin, C., Soubeyroux, J.-M., Janet, B., Addor, N., and Andréassian, V. (2025).
  CAMELS-FR dataset: a large-sample hydroclimatic dataset for France to explore hydrological diversity and support model benchmarking,
  Earth Syst. Sci. Data, 17, 1461–1479,
  \doi{10.5194/essd-17-1461-2025}.
\cr\cr
Farr, T. G., Rosen, P. A., Caro, E., Crippen, R., Duren, R., Hensley, S., Kobrick, M., Paller, M., Rodriguez, E., Roth, L.,
Seal, D., Shaffer, S., Shimada, J., Umland, J., Werner, M., Oskin, M., Burbank, D., and Alsdorf, D. (2007) .
  The Shuttle Radar Topography Mission,
  Rev. Geophys., 45, RG2004,
  \doi{10.1029/2005RG000183}.
\cr\cr
French water agencies: BD Carthage (2017).
  Cours d'eau de Métropole 2017, version 2019-10-24, Eaufrance [data set],
  \href{https://www.sandre.eaufrance.fr/atlas/srv/fre/catalog.search#/metadata/7381de46-42f7-42df-9abe-0ecd4b946034}{https://www.sandre.eaufrance.fr/atlas/sandre.eaufrance.fr/bd-carthage}
\cr\cr
IGN (2001).
  BD ALTI, version 1.0.,
  Institut national de l'information géographique et forestière (IGN) [data set],
  \url{https://geoservices.ign.fr/bdalti}.
\cr\cr
Oudin, L., Hervieu, F., Michel, C., Perrin, C., Andréassian, V., Anctil, F., and Loumagne, C. (2005).
  Which potential evapotranspiration input for a lumped rainfall-runoff model?
  Part 2 - Towards a simple and efficient potential evapotranspiration model for rainfall-runoff modelling.
  Journal of Hydrology, 303(1-4), 290-306,
  \doi{10.1016/j.jhydrol.2004.08.026}.
\cr\cr
Quintana-Segui, P., Le Moigne, P., Durand, Y., Martin, E., Habets, F., Baillon, M., Canellas, C., Franchisteguy, L., and Morel, S. (2008).
  Analysis of near-surface atmospheric variables: Validation of the SAFRAN analysis over France,
  J. Appl. Meteorol. Clim., 47, 92–107,
  \doi{10.1175/2007JAMC1636.1}.
\cr\cr
Rabus, B., Eineder, M., Roth, A., and Bamler, R. (2003).
  The shuttle radar topography mission—a new class of digital elevation models acquired by spaceborne radar,
  ISPRS J. Photogramm., 57, 241–262,
    \doi{10.1016/S0924-2716(02)00124-7}.
\cr\cr
SCHAPI (2022).
  Hydroportail website. Retrieve hydrometric data from the French National Surface Water Quantity Database.
  \url{https://www.hydro.eaufrance.fr/}.
\cr\cr
Vidal, J.-P., Martin, E., Franchistéguy, L., Baillon, M., and Soubeyroux, J. (2010).
  A 50-year high-resolution atmospheric reanalysis over France with the Safran system.
  International Journal of Climatology, 30, 1627–1644,
  \doi{10.1002/joc.2003}.
}


\examples{
library(airGRdatasets)

# list the datasets in the 'airGRdatasets' package
list_ds <- try(data(package = "airGRdatasets"), silent = TRUE)
list_ds$results[, "Item"]

# load the 'A273011002' catchment data
data(A273011002)

# display the structure of the data
str(A273011002)
}
