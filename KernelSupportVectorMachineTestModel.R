source("KernelSupportVectorMachineUtils.R")
library(e1071)

#reading testing set data
kernelSupportVectorMachineTestingSet <- readRDS("KernelSupportVectorMachineTestingSet.RDS")

#feature scaling
kernelSupportVectorMachineTestingSet[-3] = scale(kernelSupportVectorMachineTestingSet[-3])

#reading SupportVectorMachine model
kernelSupportVectorMachineModel = readRDS("KernelSupportVectorMachineModel.RDS")

#predicting testing set result.
y_pred = predict(kernelSupportVectorMachineModel ,newdata = kernelSupportVectorMachineTestingSet[-3])

#Saving prediced values for testing set
saveKernelSupportVectorMachinePredictedValuesForTestingSet(y_pred)

