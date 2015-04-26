
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Monthly Budget Calculator"),
    
    sidebarPanel(
      
      h2('Total Income'),
      numericInput('Income', 'Income/$', 2000, min = 0, max = 10000, step = 5),
      
      h2('Expenses'),  
      numericInput('Rent', 'Rent/$', 1000, min = 0, max = 10000, step = 5),
      numericInput('Food', 'Food/$', 200, min = 0, max = 10000, step = 5),
      numericInput('Clothing', 'Clothing/$', 200, min = 0, max = 10000, step = 5),
      numericInput('Transportation', 'Transportation/$', 50, min = 0, max = 10000, step = 5),
      numericInput('Social', 'Social ( including Entertainment and Gifts)/$', 200, min = 0, max = 10000, step = 5),
      numericInput('Books', 'Books/$', 50, min = 0, max = 10000, step = 5),
      numericInput('Others', 'Others/$', 100000, min = 0, max = 100000, step = 5),
      submitButton('Submit') 
    ),
    mainPanel( 
      h3('How to start'),
      p('This is a Calculator to help you calculate whether your monthly budget exceeds your monthly income.'),
      
      p('Please type your expecetd expenses below on the left and hit submit, the evaluation will be shown on the right'),
      
      h3('Results'),
      h4('Monthly Income'),
      verbatimTextOutput("inputValue"),
      h4('Expected Expenses '),
      verbatimTextOutput("Expenses"),
      h4('Comments'),
      textOutput("message")
    )
  )
)

