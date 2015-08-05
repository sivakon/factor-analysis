
#' read dataset
#' http://dl.dropbox.com/u/10246536/Web/RTutorialSeries/dataset_exploratoryFactorAnalysis.csv


require(psych)
require(GPArotation)
data <- read.csv(url("http://dl.dropbox.com/u/10246536/Web/RTutorialSeries/dataset_exploratoryFactorAnalysis.csv"))

head(data)

#'Note that several rotation and factoring methods are available when conducting EFA. 
#'Rotation methods can be described as orthogonal, 
#'which do not allow the resulting factors to be correlated, and oblique, 
#'which do allow the resulting factors to be correlated. Factoring methods can be described as common, which are used when the goal is to better describe data, and component, 
#'which are used when the goal is to reduce the amount of data. 
#'The fa() function is used for common factoring. For component analysis, see princomp().

#'we will use oblique rotation (rotate = "oblimin"), 
#'which recognizes that there is likely to be some correlation between students' latent subject matter preference factors in the real world. 
#'We will use principal axis factoring (fm = "pa"), because we are most interested in identifying the underlying constructs in the data
#'

corMat <- cor(data)
solution <- fa(r = corMat, nfactors = 2,rotate = "oblimin",fm = "pa")
solution
