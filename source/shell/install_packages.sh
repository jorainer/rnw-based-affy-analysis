#!/bin/sh
## install required R packages for the analysis.

## Define the R binary for which we would like the packages to be installed.
R="R"

## installing the R packages from Bioconductor.
$R --file="../R/install_packages.R"

## installing stuff from github:
## WriteXLS
echo "\n\nInstall also WriteXLS from github\n\n"
cd /tmp
git clone https://github.com/marcschwartz/WriteXLS
`$R CMD INSTALL WriteXLS`
rm -R -f WriteXLS

## GenomePlotR
echo "\n\n Install GenomePlotR from github\n\n"
cd /tmp
git clone https://github.com/jotsetung/generalgcrma.git
`$R CMD INSTALL generalgcrma`
rm -R -f generalgcrma

## unsoRted
echo "\n\n Install unsoRted from github\n\n"
cd /tmp
git clone https://github.com/jotsetung/unsoRted.git
`$R CMD INSTALL unsoRted`
rm -R -f unsoRted

