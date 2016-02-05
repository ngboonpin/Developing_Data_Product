library(shiny)
library(lubridate)
library(ggplot2)

banting<-read.csv("API_Banting.csv")

function(input,output){

    output$plot1 <- renderPlot({
        selected.data <- banting[(month(banting$Date)==input$month & year(banting$Date)==input$year),]

        ggplot(data=selected.data, aes(x=selected.data$Hour,y=selected.data$API))+geom_smooth(color="red")+labs(x="Hour",y="API Reading")

    })

    ##    selected.data <- banting[(month(banting$Date)==input$month & year(banting$Date)==input$year),]

    output$table <- renderDataTable (banting[(month(banting$Date)==input$month & year(banting$Date)==input$year),])
}
