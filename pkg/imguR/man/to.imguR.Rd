\name{to.imguR}
\alias{to.imguR}
\title{imguR Graphics Device}
\description{Copies the current graphics device to imgur.com}
\usage{
to.imguR()
}
\details{
This package is a wrapper for the \code{pdf} function. A temporary file is created by \code{pdf}, acting as normal 
graphical device. After plotting, when \code{dev.off} is called, the file is closed, uploaded to imguR and a URL of
the files location is returned. In the case of multipaged pdfs being uploaded, imguR automatically concatenates them
into a single image. 
}
\value{\code{imguR} is invoked for its side effect and returns nothing}
\references{
http://www.imgur.com
http://github.com/astatham/imgur-R-Package
}
\author{
Aaron Statham (aaron.l.statham@gmail.com
}

\seealso{
\code{\link{dev.off}}
\code{\link{imguRupload}}
}
\examples{
plot(x=1:10, y=-1:-10, col=1:10, pch=19, main="oh hai dere")
cat(to.imguR())
}
