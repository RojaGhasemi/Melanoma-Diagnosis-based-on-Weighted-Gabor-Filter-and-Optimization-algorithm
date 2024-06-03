# Project Title : Melanoma Diagnosis based on Weighted Gabor Filter and Optimization Algorithm

## Abstract
Diagnosis of melanoma in the early stages of the disease can significantly prevent death from this fatal cancer. Therefore, providing a method to make the diagnosis of melanoma at an early stage is very useful and valuable. Skin cancer includes pre-processing, lesion segmentation, feature extraction, feature selection and classification. In this research, a new algorithm for classifying skin images into two types of malignant and benign is presented. First, a pre-processing step is applied to remove noise and artificial effects as well as enhance image quality. The lesion is then separated from the healthy areas using the threshold method. Next, the weighted Gabor filter is implemented to extract the feature. Then the PSO algorithm is presented to obtain useful and effective features. Finally, the K-NN classifier is used to detect malignant or benign skin. The proposed method for diagnosing melanoma skin cancer as the most malignant type of skin lesions with other benign lesions has an accuracy of about 89%. Experimental results show that the use of weighted Gabor filter increases the accuracy of skin lesion detection. It also shows that the proposed method is a safe, accessible, effective way of detecting skin cancer.

## Proposed Method
1- Pre-processing breast images
   •	Convert image to grayscale
   •	Winner filter
   •	Median filter


2- Segmentation using thresholding method

3- Split image into 4 areas

4- Feature extraction using Gabor filter

5- Weighting of different areas of the image

6- Feature selection using principal swarm optimization (PSO)

7- Classification using K-NN



## Dataset
•	Dataset available: https://www.kaggle.com/datasets/hasnainjaved/melanoma-skin-cancer-dataset-of-10000-images. 



## Results
The test data have been evaluated with sensitivity, specificity and accuracy parameters. This method has an accuracy of about 89%. 

## How to Use

•	Open untitled.m file and run file

•	First click 'train dataset' button

•	Then click 'open image for test' button

•	Finally click on 'Detection' button

Finally, you can see the accuracy of test data on MIAS and DDSM datasets. 




## Project History
This project was originally completed in 2017. The commit history has been adjusted to reflect the original dates of the work.
