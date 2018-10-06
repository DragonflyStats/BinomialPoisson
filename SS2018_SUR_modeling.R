
# install.packages

  install.packages("foreign")
  install.packages("systemfit")

  # load packages if needed

  library(foreign)
  library(systemfit)
  
  # # Create the final models using this set of equations
  Model_G <- Data_Y$G ~ Elev.P50 + Canopy.relief.ratio + Elev.P20
  Model_Ho <- Data_Y$Ho ~ Elev.P50 + Elev.P95 + Elev.P25
  Model_N <- Data_Y$N ~ ..........
  Model_b <- Data_Y$b ~ ..........
  Model_c <- Data_Y$c ~ ..........
  
  Model_G  <- PpPsyl_FieldData$Basal.area ~ Elev_mean + FC_All + Elev_P70
  Model_Dg <- PpPsyl_FieldData$Mean_dbh ~ Elev_mean + FC_1 + Elev_P90
  Model_Ho <- PpPsyl_FieldData$Dominant.height ~ Elev_P90
  
  # Run
  # SUR
  system <- list (eq1 = Model_G, eq2 = Model_Dg, eq = Model_Ho)
  sur_model <- systemfit(system, method = "SUR", data = PpPsyl_Ref)
  summary(sur_model)
  
  