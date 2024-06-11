# Run each time an RMD is changed prior to commit. [IGNORE THIS]
# blogdown::build_site(run_hugo = F, build_rmd =T)
#source("R/Functions.R")
library(ready4)
library(hugodown)
project_dir_1L_chr <- getwd()
### DOCUMENTATION SECTION
## Render itemisation of currently available ready4 libraries
c("Releases"#"Framework"#,  "Module"
  ) %>%
  write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/software/Libraries"),
                       consent_1L_chr = "Y")  
# Render ready4 library installation instructions
c("Foundation",
  "Authoring-Tools/Reporting",
  "Authoring-Tools/Datasets",
  "Authoring-Tools/Code-Development",
  "Modules") %>%
write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/software/Libraries/Installation"),
                     consent_1L_chr = "Y",
                     is_rmd_1L_lgl = F)
# Render framework articles
c("Modularity",#"Paradigm", 
  "Syntax",
  "Maintenance") %>%
  write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/Tutorials/Develop-Models"),
                       consent_1L_chr = "Y",
                       is_rmd_1L_lgl = F)
c("Object-Oriented") %>%
  write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/Getting-Started/Implementation/Paradigm"),
                       consent_1L_chr = "Y",
                       is_rmd_1L_lgl = F)
# Render Module articles
c("Authoring-Algorithms","Authoring-Classes", "Authoring-Libraries") %>%
  write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/tutorials/Develop-Models/authoring-modules"),
                       consent_1L_chr = "Y",
                       is_rmd_1L_lgl = F)
# write_to_render_post("Finding-Modules",
#                      path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/Model/Modules"),
#                      consent_1L_chr = "Y",
#                      is_rmd_1L_lgl = F)
# Render Dataset articles
c("Collections","Modules") %>% # Do not evaluate write fns, add scroll text and then restore link to online RMD
  write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/Tutorials/Use-Models/Finding-Modules"),
                       consent_1L_chr = "Y",
                       is_rmd_1L_lgl = F)
c("Ingest","Label-Data","Share-Data") %>%
write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/tutorials/authoring-data"),
                     consent_1L_chr = "Y",
                     is_rmd_1L_lgl = F)
# Render Analyses articles
c("Commands","Scientific-Summaries") %>% # Do not evaluate write fns, add scroll text and then restore link to online RMD
  write_to_render_post(path_to_main_dir_1L_chr = paste0(project_dir_1L_chr,"/content/en/docs/Tutorials/Use-Models/Authoring-Analyses"),
                       consent_1L_chr = "Y",
                       is_rmd_1L_lgl = F)
### BLOG SECTION
# Render release summaries
c(#"Posters-Datasets",
  #"Instructional-Datasets",
  "Framework-Taxonomies"
  ) %>%
  write_to_render_post(paste0(project_dir_1L_chr,"/content/en/blog/releases/datasets"),
                       consent_1L_chr = "Y")
c("Framework-Libraries") %>%
  write_to_render_post(paste0(project_dir_1L_chr,"/content/en/blog/releases/libraries"),
                       consent_1L_chr = "Y")
## Deploy dependencies app
# library(rsconnect)
# deployApp("R/Shiny/Dependencies")
