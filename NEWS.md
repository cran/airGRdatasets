## Release History of the airGRdatasets Package





### 0.2.3 Release Notes (2025-12-04)

#### Licensing

- Updated the README and LICENSE files to ensure documentation is consistent with the new package license ([#20](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/20)).

____________________________________________________________________________________


### 0.2.2 Release Notes (2025-11-18)

#### Licensing

- Updated package license to 'CC BY 4.0', aligning with the licensing terms of the CAMELS-FR dataset. 
  This change removes the previous non-commercial restriction ([#17](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/17)).


#### User-visible changes

- Updated documentation to cite the official CAMELS-FR data paper in [Earth System Science Data (ESSD)](https://doi.org/10.5194/essd-17-1461-2025) instead of the IAHS paper ([#14](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/14)).
- Adopted the DOI provided by CRAN in the CITATION file ([`10.32614/CRAN.package.airGRdatasets`](https://doi.org/10.32614/CRAN.package.airGRdatasets)), replacing the previous Dataverse DOI ([#13](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/13)).


#### CRAN-compatibility updates

- Fixed invalid height/width attributes in Rd figures to comply with HTML5 standards ([#18](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/18)).

____________________________________________________________________________________


### 0.2.1 Release Notes (2023-07-11)

#### User-visible changes

- Corrected the ordering of catchment areas in the 'lumped_daily' help page map. 
  Catchments 'F', 'G', and 'H' are now displayed in the proper order ([#11](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/11)).
- Updated the catchment area list to align with the latest version of the CAMELS-FR dataset. 
  Catchments 'A341020001' and 'V121401001' have been replaced by 'A273011002' and 'V123521001', as they were removed from the CAMELS-FR sample ([#10](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/10)).


#### Version control and issue tracking

- Added unit tests to validate dataset format and ensure consistency across releases ([#12](https://gitlab.irstea.fr/HYCAR-Hydro/airgrgalaxy/airgrdatasets/-/issues/12)).

