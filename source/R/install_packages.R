## simple R-script to install all packages required for the analysis.
## this might be run in addition with the install_packages.sh in order
## to fetch and install packages from github or other repos.
source( "http://www.bioconductor.org/biocLite.R" )

cat( "\n\nInstalling basic Bioconductor:\n" )
biocLite( )

cat( "\n\nInstalling base packages:\n" )
biocLite( c( "Biobase", "RColorBrewer", "xtable", "gplots", "affy", "gcrma", "affyPLM", "multtest", "limma" ) )



