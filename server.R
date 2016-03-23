library(shiny)
library(ggplot2)

shinyServer(function(input, output) { 
 
     output$myplot <- renderPlot({
       
     category<-c("Culture", "Energy", "Placeness", "Systems", "Vernacular")
     score <- c(input$slider_c, input$slider_e, input$slider_p, input$slider_s, input$slider_v)
     myd<-data.frame(category, score)
     
     ggplot(myd, aes(category, weight=score, fill = category)) + geom_bar(width = 1, color=1, lwd=0.8) + scale_fill_brewer(palette = "Set1") + geom_hline(yintercept=seq(0, 5, by=1), colour = "black", size = 0.2) + scale_y_continuous(breaks = 0:5) + theme_linedraw() + coord_polar()  + labs(x = "", y = "") + theme(panel.grid.major = element_line(color="white", size=0.2), legend.position = "bottom", axis.ticks.y=element_line(size=0), axis.ticks = element_blank(), axis.text.x=element_text(size=8, face="bold"),  axis.text.y=element_text(size=0))

     })
     
#     output$myplot2 <- renderPlot({
#    
#     category<-c("Culture", "Energy", "Placeness", "Systems", "Vernacular")
#     score <- c(input$slider_c, input$slider_e, input$slider_p, input$slider_s, input$slider_v)
#     myd<-data.frame(category, score)   
#          
#     ggplot(myd, aes(category, weight=score, fill = category)) + geom_bar(width = 1, alpha=.85, color=1, lwd=0.8) + scale_fill_brewer(palette = "Set1") + geom_hline(yintercept=seq(0, 5, by=1), colour = "black", size = 0.2) + scale_y_continuous(breaks = 0:5) + theme_linedraw() + coord_polar()  + labs(x = "", y = "") + theme(panel.grid.major = element_line(color="gray", size=0.1), legend.position = "none", axis.ticks.y=element_line(size=0), axis.text.x=element_text(size=0),  axis.text.y=element_text(size=0)) + facet_wrap( ~ category, ncol = 5)
#     })
     
     

   })

