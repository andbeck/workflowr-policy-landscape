# Connecting to Git and checking credentials
# gitcreds::gitcreds_set()

library("workflowr")

# wflow_git_config(user.name = "zuzannazagrodzka",
#                  user.email = "zuzanna.zagrodzka@gmail.com",
#                  overwrite=TRUE)

# Starting my first ever workflowr project
# wflow_start("myproject")

# Two folders below I can't delete:

# analysis/: This directory contains all the source R Markdown files
# for implementing the data analyses for your project.

# docs/: This directory contains all the HTML files for your website.

# data/: This directory is for raw data files.

# code/: This directory is for code and scripts that might not be appropriate as
# R Markdown notebooks (e.g. for pre-processing the data, or for long-running code).

# output/: This directory is for processed data files and other
# outputs generated from the code and data.
# For example, scripts in code that pre-process raw data files from data/
# should save the processed data files in output/.

# Building the website
wflow_build(files = c("analysis/index.Rmd",
                      "analysis/about.Rmd",
                      "analysis/1a_Data_preprocessing.Rmd",
                      "analysis/1b_Dictionaries_preparation.Rmd",
                      "analysis/2_Topic_modeling.Rmd",
                      "analysis/Figure_2A.Rmd",
                      "analysis/3_Text_similarities_Figure_2B.Rmd",
                      "analysis/4_Language_analysis_Figure_2C.Rmd",
                      "analysis/5_For_and_not_for_profit_comparison.Rmd",
                      "analysis/6_Subgroups_comparison_text_similarities.Rmd",
                      "analysis/7_For_and_not_for_profit_comparison_part_2.Rmd",
                      "analysis/8_Subgroups_comparison_text_similarities_part_2.Rmd",
                      "analysis/9_Journals_additional_info.Rmd",
                      "analysis/Original_Session_Info.Rmd",
                      "analysis/license.Rmd"))

# wflow_build(files = "analysis/9_Journals_additional_info.Rmd")


# View the status of the workflowr project
wflow_status()

#  The first argument to wflow_publish() is a character vector
# of the R Markdown files to publish.
# The second is a message that will recorded by the version control system
# Git when it commits (i.e. saves a snapshot of) these files.
# The more informative the commit message the better
# (so that future you knows what you were trying to accomplish).

wflow_publish(files = c("analysis/index.Rmd",
                "analysis/about.Rmd",
                "analysis/1a_Data_preprocessing.Rmd",
                "analysis/1b_Dictionaries_preparation.Rmd",
                "analysis/ListMissionVision.Rmd",
                "analysis/2_Topic_modeling.Rmd",
                "analysis/Figure_2A.Rmd",
                "analysis/3_Text_similarities_Figure_2B.Rmd",
                "analysis/4_Language_analysis_Figure_2C.Rmd",
                "analysis/5_For_and_not_for_profit_comparison.Rmd",
                "analysis/license.Rmd",
                "./analysis/6_Subgroups_comparison_text_similarities.Rmd",
                "./analysis/7_For_and_not_for_profit_comparison_part_2.Rmd",
                "./analysis/8_Subgroups_comparison_text_similarities_part_2.Rmd",
                "analysis/9_Journals_additional_info.Rmd",
                "./analysis/Original_Session_Info.Rmd"),
              update = TRUE,
              message = "Update the file paths for all analysis and figures")


# wflow_publish(c("analysis/index.Rmd"))
# wflow_publish(files = "analysis/9_Journals_additional_info.Rmd")
wflow_status()

#
# # Deploy the website
# wflow_git_push(dry_run = TRUE)
#
