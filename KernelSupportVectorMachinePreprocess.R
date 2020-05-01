source("KernelSupportVectorMachineUtils.R")

kernelSupportVectorMachineDatasetList <- importKernelSupportVectorMachineDataset("Kernel_Support_Vector_Machine_Social_Network_Ads.csv")

saveTrainingAndTestingDataset(kernelSupportVectorMachineDatasetList[[1]], kernelSupportVectorMachineDatasetList[[2]])
