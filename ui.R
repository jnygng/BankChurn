ui <- fluidPage(
  titlePanel("Bank Churn Prediction"),
  
  sidebarLayout(
    sidebarPanel(
      radioButtons(inputId = "gender",
                   label = "Gender:",
                   choiceNames = c('Male', 'Female'),
                   choiceValues = c(1,0)),
      numericInput("dependentCount",label = "Enter Dependent Count: ", 
                   value = 0),
      radioButtons(inputId = "income_category",
                   label = "Income Category:",
                   choiceNames = c('Less than $40K', '$40K - $60K', '$60K - $80K', '$80K - $120K', '$120K +', 'Unknown'),
                   choiceValues = c(0, 1, 0, 0, 0, 0)),
      numericInput("totalRelationshipCount",label = "Enter Total Relationship Count: ", value=1),
      sliderInput(inputId = "monthsInactive",
                  label = "Months Inactive:",
                  min = 0,
                  max = 12,
                  value = 1),
      numericInput("contactsCount", label = "Contacts Count: ", value = 1),
      numericInput("totalRevolvingBal",label = "Enter Total Revolving Balance: ", value=300),
      numericInput("transactAmt",label = "Enter Transaction Amount:", value=300),
      numericInput("transactCt",label = "Enter Transaction Count:", value=5),
      numericInput("ctChange",label = "Enter Total Count Change from Q4 to Q1:", value=0),
      submitButton("Predict")
    ),
    
    mainPanel(
      # outputId: a character used to connect UI input to server output
      
      textOutput("logistic_predict"),
      plotOutput("conclusion"),
      #plotOutput("conclusion"),
      textOutput("prediction")
      
    )    
  )
  
)