library(shiny)
library(dygraphs)



df_education <- read.csv("C:/Users/adarvishian/Documents/rworking/dygraphtest/education.csv")



education_subset <- df[c(12:55),c(3,8:11)]

w1 = 0.25
w2 = 0.25
w3 = 0.25
w4 = 0.25

education_subset$Index = w1*education_subset$Secondary.school.enrollment+w2*education_subset$Primary.school.enrollment+
  w3*education_subset$Preprimary.school.enrollment+w4*education_subset$Tertiary.school.enrollment


index_edu<- education_subset[,c(1,6)]



function(input, output){
  
  output$dygraph1 <- renderDygraph({
   dygraph(education_subset, main = "Education Components") %>%
      dyRangeSelector()
   
  })

  # function(input, output){
  output$dygraph2 <- renderDygraph({
    dygraph(index_edu, main = "Education Index") %>%
      dyRangeSelector()
    })
  # }
  
}
