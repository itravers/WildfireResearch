
# Putting Rtools on the PATH

# After installation is complete, you need to perform one more step to be able to compile R packages: you need to put the location of the Rtools make utilities (bash, make, etc) on the PATH. The easiest way to do so is create a text file .Renviron in your Documents folder which contains the following line:
  PATH="${RTOOLS40_HOME}\usr\bin;${PATH}"

# You can do this with a text editor, or you can even do it from R like so:
  
  writeLines('PATH="${RTOOLS40_HOME}\\usr\\bin;${PATH}"', con = "~/.Renviron")

# Now restart R, and verify that make can be found, which should show the path to your Rtools installation.

Sys.which("make")
## "C:\\rtools40\\usr\\bin\\make.exe"
# make 
 
# If this works, you can try to install an R package from source:
  
  install.packages("TDAmapper", type = "source")
  library(TDAmapper)

# If this succeeds, you're good to go! 
#  See the links below to learn more about rtools40 and the Windows build infrastructure.

 
  install.packages("networkD3", type = "source")
  library(networkD3)
  
  To install the stable version of this R package from CRAN:
    install.packages("TDAmapper", dependencies=TRUE)
  
  
  To install the latest version of this R package directly from github:
    install.packages("devtools")
  library(devtools)
  devtools::install_github("paultpearson/TDAmapper")
  library(TDAmapper)
  
  