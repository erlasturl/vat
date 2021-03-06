% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/animate_vadt.R
\name{animate_vadt}
\alias{animate_vadt}
\title{Animated Atlantis plots for vadt}
\usage{
animate_vadt(bgm, bmass, interval = 0.3, codes, savedir)
}
\arguments{
\item{bgm}{An Atlantis bgm file}

\item{bmass}{BoxBiomass.txt file from Atlantis out}

\item{interval}{Speed of animination (unit in seconds)}

\item{codes}{Vector of containing all the Atlantis functional group codes needed to create GIFs}

\item{savedir}{Where should the gifs be saved?}
}
\description{
Create animated Atlantis plots of all the tracers
}
\details{
This function will create GIFs of all Atlantis tracers by default. WARNING: This can take a while and is not necessary to use \code{vadt}. It is probably much, much better to specify certain groups! This function depends on having the unix command convert installed locally. Convert is part of imagemagick and can be downloaded here: http://www.imagemagick.org/.
}
\examples{
\dontrun{
bgm <- "/path/to/atlantis.bgm"
bmass <- "/path/to/outputBoxBiomass.txt"
codes <- read.csv("functionalGroup.csv", header = T, stringsAsFactors = FALSE)
savedir <- "/home/chris/"
animate_vadt(bgm = bgm, bmass = bmass, codes = codes$Code, savedir = savedir)
}

}
\seealso{
\code{\link{create_vadt}}, \code{\link{vadt}}
}

