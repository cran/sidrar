% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search_sidra.R
\name{search_sidra}
\alias{search_sidra}
\title{Search SIDRA's tables with determined term(s)}
\usage{
search_sidra(x)
}
\arguments{
\item{x}{A character vector with the term(s)/word(s) to search.}
}
\value{
A character vector with the tables' names.
}
\description{
It returns all SIDRA's tables with determined term
}
\examples{
\dontrun{
search_sidra("contas nacionais")
}

}
\seealso{
\code{\link{get_sidra}}
}
\author{
Renato Prado Siqueira \email{rpradosiqueira@gmail.com}
}
\keyword{IBGE}
\keyword{sidra}
