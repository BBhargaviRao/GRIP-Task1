#THE SPARK FOUNDTAION:Predict the percentage of an student 
#based on the no. of study hours using supervised learning

# TASK-1
#NAME: B BHARAGVI RAO

#importing libraries

library(readr)
library(ggplot2)

#loading given file
data<-read.csv("http://bit.ly/w-data")

#applying linear regression
model<- lm(Scores~Hours,data)
model

#plotting the data
ggplot(data,aes(x=Hours,y=Scores))+geom_point()

par(mar=c(1,1,1,1))

plot(data)
abline(model, col="red")

#predicting the score if a student studies for 9.25 hrs/ day?
a<-data.frame(Hours=9.25)
result<-predict(model,a)
print(result)