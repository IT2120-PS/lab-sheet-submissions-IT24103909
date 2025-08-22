setwd("C:\\Users\\IT24103909\\Desktop\\IT24103909")
branch_data<-read.table("Exercise.txt",header=TRUE,sep=",")
attach(branch_data)
fix(branch_data)

str(branch_data)

boxplot(Sales_X1,
        main="Boxplot of Sales",
        ylab="Sales_X1",
        outline=TRUE,
        outpch=8,
        horizontal=TRUE)

#2
#Types & scales:
#Branch: identifier(nominal)
#Scales_X1:quantitative, ratio
#Advertising_X2:quantitative,ratio
#Year_X3:quantitative discrete,ratio 
quantile(Advertising_X2,
     probs=c(0,0.25,0.5,0.75,1))
IQR(Advertis
Find_outliers<-function(x){
  q1<-quantile(x,0.25)
  q3<-quantile(x,0.75)
  IQR_value<-q3-q1
  lower<-q1-1.5*IQR_value
  upper<-q3+1.5*IQR_value
  outliers<-x[x<lower|x>upper]
  return(outliers)
}
}    
    