  # install.packages

    install.packages("dplyr")

  # load packages if needed

    library(dplyr)

  # Selection of preliminary candidates
  # 20 candidates

    ALS_candidate_predictors <- c('Elev_minimum',
                              'Elev_maximum',
                              'Elev_mean',
                              'Elev_stddev',
                              'Elev_P10',
                              'Elev_P20',
                              'Elev_P30',
                              'Elev_P40',
                              'Elev_P50',
                              'Elev_P60',
                              'Elev_P70',
                              'Elev_P80',
                              'Elev_P90',
                              'Canopy_relief_ratio',
                              'FC_1',
                              'FC_All',
                              'Percentage_first_returns_above_mean',
                              'Percentage_first_returns_above_mode',
                              'Percentage_all_returns_above_mean',
                              'Percentage_all_returns_above_mode')

    # Select those variables for fitting datasets
    
    # Ref
    PpPsyl_ALS_Ref <- PpPsyl_Ref[, ALS_candidate_predictors]
    
    # 1m
    PpPsyl_ALS_1m_a1 <-  PpPsyl_1m_a1[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a2 <-  PpPsyl_1m_a2[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a3 <-  PpPsyl_1m_a3[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a4 <-  PpPsyl_1m_a4[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a5 <-  PpPsyl_1m_a5[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a6 <-  PpPsyl_1m_a6[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a7 <-  PpPsyl_1m_a7[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a8 <-  PpPsyl_1m_a8[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a9 <-  PpPsyl_1m_a9[, ALS_candidate_predictors]
    PpPsyl_ALS_1m_a10 <-  PpPsyl_1m_a10[, ALS_candidate_predictors]
    
    # 2m
    PpPsyl_ALS_2m_a1 <-  PpPsyl_2m_a1[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a2 <-  PpPsyl_2m_a2[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a3 <-  PpPsyl_2m_a3[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a4 <-  PpPsyl_2m_a4[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a5 <-  PpPsyl_2m_a5[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a6 <-  PpPsyl_2m_a6[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a7 <-  PpPsyl_2m_a7[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a8 <-  PpPsyl_2m_a8[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a9 <-  PpPsyl_2m_a9[, ALS_candidate_predictors]
    PpPsyl_ALS_2m_a10 <-  PpPsyl_2m_a10[, ALS_candidate_predictors]
    
    # 3m
    PpPsyl_ALS_3m_a1 <-  PpPsyl_3m_a1[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a2 <-  PpPsyl_3m_a2[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a3 <-  PpPsyl_3m_a3[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a4 <-  PpPsyl_3m_a4[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a5 <-  PpPsyl_3m_a5[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a6 <-  PpPsyl_3m_a6[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a7 <-  PpPsyl_3m_a7[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a8 <-  PpPsyl_3m_a8[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a9 <-  PpPsyl_3m_a9[, ALS_candidate_predictors]
    PpPsyl_ALS_3m_a10 <-  PpPsyl_3m_a10[, ALS_candidate_predictors]
    
    # 5m
    PpPsyl_ALS_5m_a1 <-  PpPsyl_5m_a1[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a2 <-  PpPsyl_5m_a2[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a3 <-  PpPsyl_5m_a3[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a4 <-  PpPsyl_5m_a4[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a5 <-  PpPsyl_5m_a5[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a6 <-  PpPsyl_5m_a6[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a7 <-  PpPsyl_5m_a7[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a8 <-  PpPsyl_5m_a8[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a9 <-  PpPsyl_5m_a9[, ALS_candidate_predictors]
    PpPsyl_ALS_5m_a10 <-  PpPsyl_5m_a10[, ALS_candidate_predictors]
        # Same for Ppin datasets
    
###############################################
    
    #Prelimary graphs to explore y versus x variables
    
    # Basal area
    # Use PpPsyl_ALS_Ref
    
    par(mar=c(2,2,2,2))
    par(mfrow=c(4,5))
    for (i in ALS_candidate_predictors){
      
      plot(PpPsyl_ALS_Ref[, i], PpPsyl_FieldData$Basal.area, main = i)
      
    }
    
    # Interact 
    
    for (i in ALS_candidate_predictors){
      
      plot(PpPsyl_ALS_5m_a3[, i], PpPsyl_FieldData$Basal.area, main = i)
      
    }
    
    # Dominant height
    
    # Use PpPsyl_ALS_Ref
    
    par(mar=c(2,2,2,2))
    par(mfrow=c(4,5))
    for (i in ALS_candidate_predictors){
      
      plot(PpPsyl_ALS_Ref[, i], PpPsyl_FieldData$Dominant.height, main = i)
      
    }
    
    # Interact 
    
    for (i in ALS_candidate_predictors){
      
      plot(PpPsyl_ALS_1m_a9[, i], PpPsyl_FieldData$Dominant.height, main = i)
      
    }
    
    # Modeling techniques
    
    # Multiple linear regression
    
      # Step procedure to add/drop variables from the model based on the AIC criteria
      # Predictor candidates are presented by order
      # Three approaches to select predictors, all with the same purpose
      # https://stat.ethz.ch/R-manual/R-devel/library/stats/html/step.html
    
      # Letś define our model first using all candidate predictors
    
      lm_Basal_Area_all <- lm (PpPsyl_FieldData$Basal.area ~ . , data =  PpPsyl_Ref)
      
        
      summary(lm_Basal_Area_all)
        # Fitting statistics
          # R-squared
            summary(lm_Basal_Area_all)$adj.r.squared
          # RMSE (%)
            mean(sqrt(residuals(lm_Basal_Area_all)^2))/mean(PpPsyl_FieldData$Basal.area)
    
      # Iterat over k
      
            par(mar=c(4,7,1,1))
            par(mfrow=c(3,2))
      
      # #1
        lm_Basal_Area_sep <- step( lm_Basal_Area_all , k=5)
          
        summary(lm_Basal_Area_sep)
        # Fitting statistics
          # R-squared
            summary(lm_Basal_Area_sep)$adj.r.squared
          # RMSE (%)
            mean(sqrt(residuals(lm_Basal_Area_sep)^2))/mean(PpPsyl_FieldData$Basal.area)
            
            plot(PpPsyl_FieldData$Basal.area, residuals(lm_Basal_Area_sep), 
            main = "k=5", xlab = "Basal area", ylab ="Model residuals")
            abline (0,0)
            plot(PpPsyl_FieldData$Basal.area, fitted(lm_Basal_Area_sep),
            main = "k=5", xlab = "Basal area", ylab ="Basal area estimates")
            abline (1,1)
            
            
      # #2
        lm_Basal_Area_sep <- step( lm_Basal_Area_all , k=9)
        
        summary(lm_Basal_Area_sep)
        # Fitting statistics 
          # R-squared
            summary(lm_Basal_Area_sep)$adj.r.squared
          # RMSE (%)
            mean(sqrt(residuals(lm_Basal_Area_sep)^2))/mean(PpPsyl_FieldData$Basal.area)
            
            plot(PpPsyl_FieldData$Basal.area, residuals(lm_Basal_Area_sep), 
            main = "k=9", xlab = "Basal area", ylab ="Model residuals")
            abline (0,0)
            plot(PpPsyl_FieldData$Basal.area, fitted(lm_Basal_Area_sep),
            main = "k=9", xlab = "Basal area", ylab ="Basal area estimates")
            abline (1,1)
            
            
            # par(mar=c(4,7,1,1))
            # par(mfrow=c(1,1))
            # plot(PpPsyl_ALS_Ref$Percentage_first_returns_above_mean, 
            #      PpPsyl_ALS_Ref$Percentage_all_returns_above_mean)
            # cor(PpPsyl_ALS_Ref$Percentage_first_returns_above_mean, 
            #     PpPsyl_ALS_Ref$Percentage_all_returns_above_mean)
            
            # par(mar=c(4,7,1,1))
            # par(mfrow=c(1,1))
            # plot(PpPsyl_ALS_Ref$Elev_mean, 
            #      PpPsyl_ALS_Ref$Elev_P40)
            # cor(PpPsyl_ALS_Ref$Elev_mean, 
            #     PpPsyl_ALS_Ref$Elev_P40)
            
   
      # #3
        lm_Basal_Area_sep <- step( lm_Basal_Area_all , k=10)
    
        summary(lm_Basal_Area_sep)
        # Fitting statistics
          # R-squared
            summary(lm_Basal_Area_sep)$adj.r.squared
          # RMSE (%)
            mean(sqrt(residuals(lm_Basal_Area_sep)^2))/mean(PpPsyl_FieldData$Basal.area)
            
            plot(PpPsyl_FieldData$Basal.area, residuals(lm_Basal_Area_sep), 
            main = "k=10", xlab = "Basal area", ylab ="Model residuals")
            abline (0,0)
            plot(PpPsyl_FieldData$Basal.area, fitted(lm_Basal_Area_sep),
            main = "k=10", xlab = "Basal area", ylab ="Basal area estimates") 
            abline (1,1)
            
            
        # Define your model for Volume, Basal area, Dominant height, Mean_ dbh
            
        # Imagine the following scenario:
            
        # Ref_V = f(FC_1, Elev_mean, Elev_P20)
        # Ref_G = f(FC_All, Elev_mean, Elev_P70)
        # Ref_Ho = f(Elev_P95)
        # Ref_dbh = F(Elev_mean, Elev_P70, FC_1)
            
        # SUR
        # See script Script_SUR.R
        # ALS seminar Dec 2017
            # https://www.dropbox.com/sh/oq6f4w9nu5ipz4b/AABlmvqThf71V3wM2Kmj5bNva?dl=0
            
        
            
            
            
            
        
            
      
      
    

    
    
    
    
    
    
    
