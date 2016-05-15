
.rms.env <- new.env()

.read.rms <- function() {
    filename <- system.file("rmsfact", "rmsfact.txt", package="rmsfact")
    if (!file.exists(filename)) stop("Hm, file", filename, "is missing.", call.=FALSE)
    data <- readLines(filename)
}
    
##' Function to display a randomly chose fact about Richard M. Stallman
##'
##' This function displays a randomly chosen line from the included
##' data set of of random \sQuote{facts} about Richard M. Stallman.
##' The function is a port of the GNU Octave function \code{fact}
##' doing the same, and written by Jordi Gutiérrez Hermoso based on
##' the (now defunct) site \url{http://www.stallmanfacts.com}.
##' @title Display a Random Fact about Richard M. Stallman
##' @return A character vector containing one randomly selected line
##'  from the included file. It is of class \code{rmsfact} for
##'  which an S3 print method will be invoked.
##' @author Dirk Eddelbuettel
##' @seealso \code{\link[fortunes:fortunes]{fortune}}
##' @examples
##'   set.seed(123)
##'   rmsfact()
rmsfact <- function() {
    if (is.null(.rms.env$rms.data)) .rms.env$rms.data <- .read.rms()
    rms.data <- .rms.env$rms.data

    n <- length(rms.data)
    p <- sample(1:n, 1)
    v <- rms.data[p]
    class(v) <- "rmsfact"
    return(v)
}

##' @rdname rmsfact
##' @param x Default object for \code{print} method
##' @param width Optional column width parameter
##' @param ... Other optional arguments
print.rmsfact <- function(x, width = NULL, ...) {
    if (is.null(width)) width <- 0.9 * getOption("width")
    if (width < 10) stop("'width' must be greater than 10", call.=FALSE)
    invisible(sapply(strwrap(x, width), cat, "\n"))
}
