\name{cleanBowlerData}
\alias{cleanBowlerData}

\title{
Clean the bowlers data frame
}
\description{
Clean the bowler's CSV fileand remove rows DNB(Did not bowl) & TDNB (Team did not bowl). Also normalize all 8 ball over to a 6 ball over for earlier bowlers
}
\usage{
cleanBowlerData(file)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
The <bowler>.csv file 
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
A cleaned bowler data frame with complete cases
}
\references{
http://www.espncricinfo.com/ci/content/stats/index.html\cr
https://gigadom.wordpress.com/
}
\author{
Tinniam V Ganesh
}
\note{
Maintainer: Tinniam V Ganesh <tvganesh.85@gmail.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{clean}}
}
\examples{

# Get bowling data and store in file for future
# kumble <- getPlayerData(30176,dir="./mytest", file="kumble.csv",type="bowling", 
homeOrAway=c(1),result=c(1,2))

cleanBowlerData("kumble.csv")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
