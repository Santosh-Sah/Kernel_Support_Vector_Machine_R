source("KernelSupportVectorMachineUtils.R")
library(e1071)

#reading training set 
kernelSupportVectorMachineTrainingSet <- readRDS("KernelSupportVectorMachineTrainingSet.RDS")

#feature scaling
kernelSupportVectorMachineTrainingSet[-3] = scale(kernelSupportVectorMachineTrainingSet[-3])

# Fitting KernelSupportVectorMachine to the Training set
kernelSupportVectorMachine = svm(formula = Purchased ~ .,
                           data = kernelSupportVectorMachineTrainingSet,
                           type = 'C-classification',
                           kernel = 'radial')

#saving KernelSupportVectorMachine model
saveKernelSupportVectorMachineModel(kernelSupportVectorMachine)
