install.packages("renv")
renv::init()

# Install packages as usual, and renv will manage them for your project.
install.packages("dplyr")
# Save the state of your project’s library to the renv.lock file:
renv::snapshot()
# Restore the project’s library from the renv.lock file:
renv::restore()
# Update the packages and renv.lock file:
renv::update()