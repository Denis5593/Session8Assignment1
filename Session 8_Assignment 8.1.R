# 1. Use the package RcmdrPlugin.IPSUR.
# data(RcmdrTestDrive)
# and perform the below operations:

library(RcmdrPlugin.IPSUR)
data(RcmdrTestDrive)

#   a. Calculate the average salary by gender and smoking status.

attach(RcmdrTestDrive)

by(salary, gender, mean, na.rm = TRUE)

by(salary, smoking, mean, na.rm = TRUE)


# b. Which gender has the highest mean salary?

Male

#   c. Report the highest mean salary.

mean(salary [gender == 'Male'])

# d. Compare the spreads for the genders by calculating the standard deviation of salary by gender.

y <- tapply(salary, list(gender = gender), sd)
y
