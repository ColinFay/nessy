download.file("https://raw.githubusercontent.com/BcRikko/NES.css/master/css/nes.css", "inst/ness.css")

usethis::use_build_ignore("dev.R")

colin::fill_desc("nessy", "A 'NES' css for 'Shiny'", "A 'NES' css for 'Shiny'.", "nessy")
colin::init_docs()

colin::new_r_file("cartridge")
colin::new_r_file("buttons")
colin::new_r_file("container")
colin::new_r_file("checkbox")
colin::new_r_file("form")
colin::new_r_file("balloon")
colin::new_r_file("icon")

usethis::use_package("shiny")
usethis::use_package("glue")

usethis::use_code_of_conduct()
