library(rvest)

link <- "https://en.wikipedia.org/wiki/Godzilla_vs._Kong"

website <- read_html(link)

story_of_Godzilla_vs_Kong <- website %>%
  html_nodes("p") %>%
  html_text()

theme_and_analysis <- website %>%
  html_nodes("h2:contains('Themes and analysis') + ul li") %>%
  html_text()

story_df <- data.frame(story_of_Godzilla_vs_Kong)
theme_df <- data.frame(theme_and_analysis)

write.table(story_df, "story.txt")
write.table(theme_df, "theme.txt")
