% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_jackstrap_ks.R
\name{plot_jackstrap_ks}
\alias{plot_jackstrap_ks}
\title{Plot Jackstrap KS:  This function plots p-value of Kolmogorov-Smirnov Test in decreasing order of leverage.}
\usage{
plot_jackstrap_ks(data_plot, model_plot)
}
\arguments{
\item{data_plot}{is the jackstrap object created by jackstrap function.}

\item{model_plot}{is the desired model. There are two models: 1 - The graphic shows the amount of removed DMU on x axis and p-value of K-S test on y axis;
2 - The graphic shows DMU code on x axis and p-value of K-S test on y axis.}
}
\value{
Return the plot with p-value of K-S test and removed DMU or DMU code.
}
\description{
Plot Jackstrap KS:  This function plots p-value of Kolmogorov-Smirnov Test in decreasing order of leverage.
}
\examples{
 \dontshow{
   library(jackstrap)
   test_data <- data.frame(mun=c(1:10), cod=c(1:10), y=c(5,7,6,7,4,6,8,9,3,1),
                          x=c(7,8,10,22,15,7,22,17,10,5))
   effic_test <- jackstrap (data=test_data, ycolumn=1, xcolumn=1, bootstrap=1,
                  perc_sample_bubble=1, dea_method="crs", orientation_dea="in",
                 n_seed = 2000, repos=FALSE, num_cores=1)
   effic_ks <- jackstrap_ks (data=test_data, jackstrap_obj=effic_test,
                            num_cores = 1)
   plot_jack_ks <- plot_jackstrap_ks(effic_ks, 1)
 }
 \donttest{
   ##Plot the dispersion chart with p value of K-S test and amount of DMU removed.
   plot_jackstrap_ks(effic_ks, 1)
 }
}
