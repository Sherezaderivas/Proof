shinyUI(bootstrapPage(
  
  selectInput(inputId = "n_breaks",
              label = "Number of bins in histogram (approximate):",
              choices = c(10, 20, 35, 50),
              selected = 20),
  
  selectInput("select", label = h3("Parte prueba", style ="color:#753159;"), 
              choices =  t),
  
  checkboxInput(inputId = "individual_obs",
                label = strong("Cambios leves"),
                value = FALSE),
  
  checkboxInput(inputId = "density",
                label = strong("Probando"),
                value = FALSE),
  
  plotOutput(outputId = "main_plot", height = "300px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Bandwidth adjustment:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  )
  
))
