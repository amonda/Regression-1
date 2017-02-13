
load("/Users/alyssamonda/Desktop/Big Data/Regression-1/White_wines.csv")
names(White_wines) <- make.names(names(White_wines))
summary(White_wines)
scatterplotMatrix(~alcohol+chlorides+citric.acid+quality, reg.line=FALSE, 
  smooth=FALSE, spread=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), 
  id.n=0, diagonal = 'density', data=White_wines)
scatterplotMatrix(~density+fixed.acidity+free.sulfur.dioxide+quality, 
  reg.line=FALSE, smooth=FALSE, spread=FALSE, span=0.5, ellipse=FALSE, 
  levels=c(.5, .9), id.n=0, diagonal = 'density', data=White_wines)
scatterplotMatrix(~pH+quality+residual.sugar+sulphates, reg.line=FALSE, 
  smooth=FALSE, spread=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), 
  id.n=0, diagonal = 'density', data=White_wines)
scatterplotMatrix(~quality+total.sulfur.dioxide+volatile.acidity, 
  reg.line=FALSE, smooth=FALSE, spread=FALSE, span=0.5, ellipse=FALSE, 
  levels=c(.5, .9), id.n=0, diagonal = 'density', data=White_wines)
RegModel.Alcohol <- lm(alcohol~quality, data=White_wines)
summary(RegModel.Alcohol)
scatterplot(quality~alcohol, reg.line=FALSE, smooth=FALSE, spread=FALSE, 
  boxplots=FALSE, span=0.5, ellipse=FALSE, levels=c(.5, .9), data=White_wines)
library(MASS, pos=15)
stepwise(RegModel.Alcohol, direction='backward/forward', criterion='BIC')
stepwise(RegModel.Alcohol, direction='backward/forward', criterion='BIC')
stepwise(RegModel.Alcohol, direction='backward/forward', criterion='AIC')

RegModel.Alcohol <- lm(alcohol~quality, data=White_wines)
summary(RegModel.Alcohol)
cor(White_wines[,c("alcohol","chlorides","citric.acid","density",
  "fixed.acidity","free.sulfur.dioxide","pH","quality","residual.sugar",
  "sulphates","total.sulfur.dioxide","volatile.acidity")], use="complete")
cor(White_wines[,c("alcohol","chlorides","citric.acid","density",
  "fixed.acidity","free.sulfur.dioxide","pH","quality","residual.sugar",
  "sulphates","total.sulfur.dioxide","volatile.acidity")], use="complete")
cor(White_wines[,c("alcohol","quality")], use="complete")
cor(White_wines[,c("alcohol","quality")], use="complete")
cor(White_wines[,c("alcohol","chlorides","citric.acid","density",
  "fixed.acidity","quality")], use="complete")
cor(White_wines[,c("free.sulfur.dioxide","pH","quality","residual.sugar",
  "sulphates")], use="complete")
cor(White_wines[,c("quality","total.sulfur.dioxide","volatile.acidity")], 
  use="complete")

