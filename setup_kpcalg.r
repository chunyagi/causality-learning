# Install remotes if missing
if (!requireNamespace("remotes", quietly=TRUE))
  install.packages("remotes", repos="https://cloud.r-project.org")
# Install core dependencies
install.packages(
  c("kernlab","RSpectra","mgcv","energy"),
  repos="https://cloud.r-project.org"
)
# Install Bioconductor graph packages
if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager", repos="https://cloud.r-project.org")
BiocManager::install(c("graph","RBGL"), ask=FALSE)
# Finally install the archived kpcalg
remotes::install_version(
  "kpcalg",
  version = "1.0.1",
  repos   = "https://cloud.r-project.org"
)
