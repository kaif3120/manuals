install.packages("caret") library('caret') 
heart <- read.csv("C:\\Users\\PC NO 19 IT\\Downloads\\heart.csv", sep = ',', header = FALSE) 
str(heart) 
#split training and test dataset 
intrain<- createDataPartition(y = heart$V14, p= 0.7, list = FALSE) 
training <- heart[intrain,] 
testing <- heart[-intrain,] 
dim(training); dim(testing); anyNA(heart) summary(heart) 
training[["V14"]] <- factor(training[["V14"]]) 
trctrl<- trainControl(method = "repeatedcv", number = 10, repeats = 3) svm_Linear<- train(V14 ~., data = training, method = 
"svmLinear",trControl=trctrl,preProcess = c("center", "scale"),tuneLength = 10) svm_Linear 
test_pred<- predict(svm_Linear, newdata = training) 
test_pred