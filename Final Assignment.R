#Basic Statistics
summary(MultiRegDataset)
#Histogram of Expenses
hist(MultiRegDataset$expenses)
#One-sample T-test
t.test(MultiRegDataset$expenses,mu=10000)
#Simple Linear Regression
simple.fit<-lm(expenses ~ smoker, data = MultiRegDataset)
LinearModel<-simple.fit
summary(LinearModel)
#Multiple Linear Regression
fit <- lm(expenses ~ age + sex + bmi + children + smoker + region, data=MultiRegDataset)
summary(fit) # show results