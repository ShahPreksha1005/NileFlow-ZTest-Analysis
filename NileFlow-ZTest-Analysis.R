
#Store dataset in variable my_data
my_data=Nile
#Display the dataset
my_data

#get structure of dataset
str(my_data)

#get summary of dataset
summary(my_data)

#get 1st row values
head(my_data)
# get last row values
tail(my_data)

#sample creation with size 50 and repitition is allowed
(sample_data=sample(my_data,50,replace=TRUE))

#performing z test
(xbar=mean(sample_data))
(mue0=250)
(n=length(sample_data))
(sigma=sd(my_data))
a=sqrt(n)
c=sigma/a
d=xbar-mue0
(z=d/c)

#obtain p val
pnorm(z,mean=0,sd=1, lower.tail=FALSE)
#For left tailed tests: pnorm(q,mean=0,sd=1,lower.tail=TRUE)
#For right tailed tests: pnorm(q,mean=0,sd=1,lower.tail=FALSE)
#For two tailed tests: 2*pnorm(q,mean=0,sd=1,lower.tail=FALSE)