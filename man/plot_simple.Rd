% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_simple.R
\name{plot_simple}
\alias{plot_simple}
\title{Simplest code to plot population(s) against time}
\usage{
plot_simple(
  populations,
  new.graph = TRUE,
  xlim,
  ylim,
  lty = 1,
  legend = "topright"
)
}
\arguments{
\item{populations}{Data frame with columns corresponding to different
population segments and a 'time' column}

\item{new.graph}{(optional) whether to start a new graph, default TRUE}

\item{xlim}{(optional, for new graphs) the limits of the x axis,
default min to max time}

\item{ylim}{(optional, for new graphs) the limits of the y axis,
default min to max pop size}

\item{lty}{(optional) the line type for all lines on the graph, default 1}

\item{legend}{(optional) legend position; choose from "topleft", "top",
"topright" (default), "left", "center", "right", "bottomleft", "bottom", or
"bottomright"}
}
\description{
A simple plot all of the populations in a data frame against time. One column
must be called "time" and will be used as the x-axis of the plot. The rest
will be used as different lines on the y-axis, with a legend denoting their
column names. See plot_populations() above for a more sophisticated plotting
function.
}
\examples{
df <- data.frame(time = 0:100, grow = exp((0:100) / 10),
                 die = exp(seq(10, 0, by = -0.1)))
plot_simple(df, lty = c(2, 3))

}
