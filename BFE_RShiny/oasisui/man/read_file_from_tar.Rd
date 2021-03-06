% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_hub_helper_funcs.R
\name{read_file_from_tar}
\alias{read_file_from_tar}
\title{untar file}
\usage{
read_file_from_tar(tarfile, dataset_identifier, destdir = tempdir(),
  nrows = Inf)
}
\arguments{
\item{tarfile}{path to tar bundle.}

\item{dataset_identifier}{name and relative path of file to untar.}

\item{destdir}{path where to extract file.}

\item{nrows}{number of rows to read. Default Inf indicates full content.}
}
\value{
nrows rows of the content of dataset_identifier
}
\description{
Returns content of a file in a tar bundle.
}
