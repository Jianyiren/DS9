Results <- function(Rent,Clothing,Transportation,Social,Books,Others) (Rent+Clothing+Transportation+Social+Books+Others)

Message<-function(Income,Rent,Clothing,Transportation,Social,Books,Others){
  expense=Rent+Clothing+Transportation+Social+Books+Others
  if (expense>Income){
    return("Overdrawn. Please rebuget")
  }else{
    return("Good")
  }
 }

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$Income})
    output$Expenses <- renderPrint({Results(input$Rent,input$Clothing,input$Transportation,input$Social,input$Books,input$Others)})
    
    output$message <- renderText({
      if (input$Income>input$Rent+input$Clothing+input$Transportation+input$Social+input$Books+input$Others ) "Good"
      else if (10*input$Income<input$Rent+input$Clothing+input$Transportation+input$Social+input$Books+input$Others) "You know how to make money, so start cutting trees so that you can find a diamond mine one day ;)"
      else "Overdrawn, please rebudget"
    })
    
  }
)
