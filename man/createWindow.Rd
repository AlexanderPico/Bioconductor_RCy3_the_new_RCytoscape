\name{createWindow}
\alias{createWindow}
\alias{createWindow,CytoscapeWindowClass-method}
\title{createWindow}
\description{
Request that Cytoscape create a new window for the supplied
CytoscapeWindowClass object.  It will hold a new network, using
the title supplied when the object's constructor was called.

This method will probably not often be useful: it is called behind the
scenes by the CytoscapeWindow constructor unless you specify (in calling
the constructor) 'create.window=FALSE'.   In that case, or if you
interactively delete the window in Cytoscape, or if you call the
'deleteWindow' or 'deleteAllWindows' methods, you can create a new
window by calling this method.
}
\usage{
createWindow(obj)
}
\arguments{
  \item{obj}{a \code{CytoscapeWindowClass} object. }
}

\value{
Nothing.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\examples{
  \dontrun{
   # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())
  
   # create a CytoscapeWindowClass object by calling the constructor
  c2 <- CytoscapeWindow ('cwc demo', makeSimpleGraph ())
  
   # delete the window and then recreate it
  deleteAllWindows(CytoscapeConnection())
  createWindow(c2)
}

}
\keyword{graph}
