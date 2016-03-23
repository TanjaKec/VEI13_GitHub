shinyUI(fluidPage(
  titlePanel(h2("Vernacular Ecology Index - VEI")),
  
  sidebarLayout(
    
    sidebarPanel(h5("Please input the scores for the five VEI categories."), 
  
          sliderInput("slider_c", 
                      label = h5("Culture:"),
                      min = 0, max = 5, value = c(0), step = 1, round =1, width = "150px"),
          
          sliderInput("slider_e", 
                      label = h5("Energy:"),
                      min = 0, max = 5, value = c(0), step = 1, round =1, width = "150px"),
          
          sliderInput("slider_p", 
                      label = h5("Placeness:"),
                      min = 0, max = 5, value = c(0), step = 1, round =1, width = "150px"),
          
          sliderInput("slider_s", 
                      label = h5("Systems:"),
                      min = 0, max = 5, value = c(0), step = 1, round =1, width = "150px"),
          
          sliderInput("slider_v", 
                      label = h5("Vernacular:"),
                      min = 0, max = 5, value = c(0), step = 1, round =1, width = "150px")
  ),
  
  mainPanel(
    plotOutput("myplot")
  )

  )
   
))

