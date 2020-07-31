myPaths <- .libPaths()   # get the paths
myPaths <- c("/opt/R/x86_64-pc-linux-gnu-library/3.6", myPaths)  # switch them
.libPaths(myPaths)  # reassign them

install.packages(c('repr', 'IRdisplay', 'evaluate', 'crayon', 'pbdZMQ', 'devtools', 'uuid', 'digest'))
devtools::install_github('IRkernel/IRkernel')

IRkernel::installspec()
