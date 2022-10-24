# jast-shiny
Just another shiny template

## Purpose
This repository contains an RStudio project template that allows you to quickly set up a shiny app - without having to spend hours on learning shiny. We want to flatten the learning curve! Also, this project template is structured based on best practices

### People requirements
All you need to know is R and the tidyverse. And you need to let go of the thought that a script is run from the first line to the last.

Shiny introduces so called reactivity: code is executed as a reaction on user actions/input and knows, which parts of the code depend on these changes, leading to a kind of chain reaction of re-computations

### System requirements
A current R installation and renv. The renv-lockfile uses R 4.2.1. You can always choose to not use renv (delete the renv-folder, renv.lock and .Rprofile-file) - or delete the lock-file and create it based on your own needs.

## Features
* App structure using separated files for server.R and ui.R
* Folder structure to keep a neat server.R
* Sample of all standard input widgets
* Commented code to give you examples where to do what

## Instructions
This is a template repo, so you can use it to create your own repo out of it.
### Running the app
* After setting up the renv environment or installing the required packages, you can run the shiny app from your local machine out of RStudio: whenever you are in one of the files app.R, ui.R, or server.R, you will see a "Run App"-Button in the upper right corner of the script window.

### Project structure
```
jast_shiny_template
|--- app.R.     - contains the runApp-command (normally no need to edit this file)
|--- ui.R.      - contains all elements that are displayed on your shiny-app-page, e.g., input widgets, plot-elements
|--- server.R   - contains all logic and calculations to react on user input and provide the content for the output elements defined in ui.R
|--- data/
     |--- files - containing your data (csv, rdata, xlsx,...)
|--- www/
     |--- media - resources that you want to display in your app, e.g., logo, other images (png, jpeg,...)
|--- R/                                      - scripts containing defintions, mostly functions that you will use in the server.R; the files are sourced in alphabetical order when starting the shiny app
     |--- 00_libraries.R                     - put here all R-packages that you need in your project
     |--- 00_library_functions.R             - functions that are candidates to put in an R package (that does not yet exist)
     |--- 01_theme_definition.R              - define here the design of the site and also your ggplot theme
     |--- 02_misc_functions.R                - define functions that help you reduce redundant code, like calculations you need in serveral locations of your code
     |--- 10_input_functions.R               - define functions that read in data and url parameters
     |--- 20_data_wrangling.R                - define functions that transform your data
     |--- 30_plot_functions.R                - define functions that create plots using ggplot
     |--- 40_output_functions.R              - define functions that  allow data output, e.g., to download datasets
     |--- 99_code_run_once_when_app_starts.R - e.g., loading data sets that won't change over the time of the deployment of the app
```

### Publishing the app
todo

## Disclaimer
This is still under development and will be improved based on the feedback of the first users.
