# install.packages

  install.packages("readxl")
  install.packages("tm")
  install.packages("R.utils")
  install.packages("nlme")

# load packages if needed

  library(readxl)
  library(tm)
  library(R.utils)
  library(nlme)

# Three forest ecosystems
  # Pinus pinea forest (Ppin)
  # Route
    setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinea")
    dir()
  
  # Read Reference data
    Ppin_Ref <- read.table("Ppin_Ref.txt", 
                         sep ="\t", header = TRUE)
    summary(Ppin_Ref)
  
  # Read field data
    Ppin_FieldData <- read.table("Ppin_FieldData.txt", 
                               sep ="\t", header = TRUE)
    summary(Ppin_FieldData)
  
  # Positioning errors
    # Change dir to 1m_e
      setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinea/1m_e")
      dir()
    
    # Import datasets
        Ppin_1m_a1 <- read.table("Ppin_a1_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a2 <- read.table("Ppin_a2_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a3 <- read.table("Ppin_a3_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a4 <- read.table("Ppin_a4_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a5 <- read.table("Ppin_a5_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a6 <- read.table("Ppin_a6_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a7 <- read.table("Ppin_a7_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a8 <- read.table("Ppin_a8_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a9 <- read.table("Ppin_a9_1m.txt", sep ="\t", header = TRUE)
        Ppin_1m_a10 <- read.table("Ppin_a10_1m.txt", sep ="\t", header = TRUE)
      
    # Compute for 2m_e
        
        setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinea/2m_e")
        dir()
        
        Ppin_2m_a1 <- read.table("Ppin_a1_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a2 <- read.table("Ppin_a2_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a3 <- read.table("Ppin_a3_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a4 <- read.table("Ppin_a4_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a5 <- read.table("Ppin_a5_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a6 <- read.table("Ppin_a6_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a7 <- read.table("Ppin_a7_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a8 <- read.table("Ppin_a8_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a9 <- read.table("Ppin_a9_2m.txt", sep ="\t", header = TRUE)
        Ppin_2m_a10 <- read.table("Ppin_a10_2m.txt", sep ="\t", header = TRUE)
        
        
    # Compute for 3m_e
    # Compute for 3m_e
      
  # Mixed pine forest (Ppinaster and Psylvestris)
  # Route
    setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinaster_Psylvestris")
    dir()
      
  # Read Reference data
    PpPsyl_Ref <- read.table("PpPsyl_Ref.txt", 
                             sep ="\t", header = TRUE)
    summary(PpPsyl_Ref)
      
  # Read field data
    PpPsyl_FieldData <- read.table("PpPsyl_FieldData.txt", 
                                   sep ="\t", header = TRUE)
    summary(PpPsyl_FieldData)
      
  # Positioning errors
    # Change dir to 1m_e
      setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinaster_Psylvestris/1m_e")
      dir()
      
      # Import datasets
        PpPsyl_1m_a1 <- read.table("PpPsyl_a1_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a2 <- read.table("PpPsyl_a2_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a3 <- read.table("PpPsyl_a3_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a4 <- read.table("PpPsyl_a4_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a5 <- read.table("PpPsyl_a5_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a6 <- read.table("PpPsyl_a6_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a7 <- read.table("PpPsyl_a7_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a8 <- read.table("PpPsyl_a8_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a9 <- read.table("PpPsyl_a9_1m.txt", sep ="\t", header = TRUE)
        PpPsyl_1m_a10 <- read.table("PpPsyl_a10_1m.txt", sep ="\t", header = TRUE)
      
      # Compute for 2m_e
        setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinaster_Psylvestris/2m_e")
        dir()
        PpPsyl_2m_a1 <- read.table("PpPsyl_a1_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a2 <- read.table("PpPsyl_a2_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a3 <- read.table("PpPsyl_a3_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a4 <- read.table("PpPsyl_a4_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a5 <- read.table("PpPsyl_a5_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a6 <- read.table("PpPsyl_a6_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a7 <- read.table("PpPsyl_a7_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a8 <- read.table("PpPsyl_a8_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a9 <- read.table("PpPsyl_a9_2m.txt", sep ="\t", header = TRUE)
        PpPsyl_2m_a10 <- read.table("PpPsyl_a10_2m.txt", sep ="\t", header = TRUE)
        
      # Compute for 3m_e
        setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinaster_Psylvestris/3m_e")
        dir()
        PpPsyl_3m_a1 <- read.table("PpPsyl_a1_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a2 <- read.table("PpPsyl_a2_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a3 <- read.table("PpPsyl_a3_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a4 <- read.table("PpPsyl_a4_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a5 <- read.table("PpPsyl_a5_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a6 <- read.table("PpPsyl_a6_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a7 <- read.table("PpPsyl_a7_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a8 <- read.table("PpPsyl_a8_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a9 <- read.table("PpPsyl_a9_3m.txt", sep ="\t", header = TRUE)
        PpPsyl_3m_a10 <- read.table("PpPsyl_a10_3m.txt", sep ="\t", header = TRUE)
        
      # Compute for 5m_e
        setwd("C:/Users/adria/Desktop/EFI SummerSchool 2018/Material/Wednesday_Modeling_AP/Datasets/Ppinaster_Psylvestris/5m_e")
        dir()
        PpPsyl_5m_a1 <- read.table("PpPsyl_a1_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a2 <- read.table("PpPsyl_a2_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a3 <- read.table("PpPsyl_a3_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a4 <- read.table("PpPsyl_a4_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a5 <- read.table("PpPsyl_a5_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a6 <- read.table("PpPsyl_a6_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a7 <- read.table("PpPsyl_a7_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a8 <- read.table("PpPsyl_a8_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a9 <- read.table("PpPsyl_a9_5m.txt", sep ="\t", header = TRUE)
        PpPsyl_5m_a10 <- read.table("PpPsyl_a10_5m.txt", sep ="\t", header = TRUE)
        
  # Pinus nigra forest (FYI)
        
        
      
        
      

      
      
      
      
    
      
      
    
    
    
  
  
    
    
    
    
  # Change dir to 2m_e
  
  
  
  
  
# The second argument of the function specifies the sheet to read
  
  
