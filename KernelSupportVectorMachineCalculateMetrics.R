source("KernelSupportVectorMachineUtils.R")

#reading KernelSupportVectorMachine model
kernelSupportVectorMachineModel = readRDS("KernelSupportVectorMachineModel.RDS")

#reading testing set data
kernelSupportVectorMachineTestingSet <- readRDS("KernelSupportVectorMachineTestingSet.RDS")

#reading predicted values of the testing set
kernelSupportVectorMachinePredictedValuesForTestingSet <- readRDS("KernelSupportVectorMachinePredictedValuesForTestingSet.RDS")

kernelSupportVectorMachineConfusionMatrix = table(kernelSupportVectorMachineTestingSet[, 3], kernelSupportVectorMachinePredictedValuesForTestingSet)

kernelSupportVectorMachineConfusionMatrix

#    0  1
# 0 55  9
# 1  4 32
