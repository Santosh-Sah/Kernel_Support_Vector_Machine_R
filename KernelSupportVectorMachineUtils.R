importKernelSupportVectorMachineDataset <- function(kernelSupportVectorMachineDatasetFileName) {
  
  #importing dataset
  kernelSupportVectorMachineDataset = read.csv(kernelSupportVectorMachineDatasetFileName)
  
  #getting the required columns
  kernelSupportVectorMachineDataset = kernelSupportVectorMachineDataset[3:5]
  
  #encoding target feature as factor
  kernelSupportVectorMachineDataset$Purchased = factor(kernelSupportVectorMachineDataset$Purchased, levels = c(0, 1))
  
  #splitting the dataset into training set and testing set
  library(caTools)
  set.seed(1234)
  
  kernelSupportVectorMachineDatasetSlpit = sample.split(kernelSupportVectorMachineDataset$Purchased, SplitRatio = 0.75)
  
  kernelSupportVectorMachineTrainingSet = subset(kernelSupportVectorMachineDataset, kernelSupportVectorMachineDatasetSlpit == TRUE)
  
  kernelSupportVectorMachineTestingSet = subset(kernelSupportVectorMachineDataset, kernelSupportVectorMachineDatasetSlpit == FALSE)
  
  
  returnList <- list(kernelSupportVectorMachineTrainingSet, kernelSupportVectorMachineTestingSet)
  
  return (returnList)
  
}

#saving training and testing set
saveTrainingAndTestingDataset <- function(kernelSupportVectorMachineTrainingSet, kernelSupportVectorMachineTestingSet){
  
  saveRDS(kernelSupportVectorMachineTrainingSet, file = "KernelSupportVectorMachineTrainingSet.RDS")
  saveRDS(kernelSupportVectorMachineTestingSet, file = "KernelSupportVectorMachineTestingSet.RDS")
  
}

#Save KernelSupportVectorMachine Model
saveKernelSupportVectorMachineModel <- function(kernelSupportVectorMachineModel) {
  
  saveRDS(kernelSupportVectorMachineModel, file = "KernelSupportVectorMachineModel.RDS")
}

#Save prediced values for testing set
saveKernelSupportVectorMachinePredictedValuesForTestingSet <- function(kernelSupportVectorMachinePredictedValuesForTestingSet) {
  
  saveRDS(kernelSupportVectorMachinePredictedValuesForTestingSet, file = "KernelSupportVectorMachinePredictedValuesForTestingSet.RDS")
}
