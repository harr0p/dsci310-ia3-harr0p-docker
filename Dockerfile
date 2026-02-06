#FROM rocker/studio
FROM rocker/rstudio:4.4.2

RUN Rscript -e "print('something to say...')"
RUN Rscript -e "install.packages('remotes', repos ='https://cloud.r-project.org')"
RUN Rscript -e "remotes::install_version('palmerpenguins', version='0.1.1', repos='https://cloud.r-project.org')"