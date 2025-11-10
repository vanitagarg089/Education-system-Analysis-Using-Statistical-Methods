# Create a Student Performance Dataset
student_data <- data.frame(
  Student_ID = 1:30,
  Gender = sample(c("Male", "Female"), 30, replace = TRUE),
  Hours_Studied = c(1,2,3,4,5,6,2,3,4,6,7,8,5,4,3,2,9,10,8,6,7,5,4,3,2,10,9,8,7,6),
  Attendance = sample(60:100, 30, replace = TRUE),
  Test_Score = c(45,50,55,60,62,65,58,61,64,68,70,72,67,65,63,55,75,78,80,72,74,69,65,62,58,82,79,77,75,70)
)

str(student_data)
student_data
summary(student_data)

# Histogram of Test Scores
hist(student_data$Test_Score,
     main = "Distribution of Test Scores",
     xlab = "Test Score",
     ylab = "Frequency",
     col = "yellow",
     border = "black")

# Histogram of Hours Studied
hist(student_data$Hours_Studied,
     main = "Distribution of Hours Studied",
     xlab = "Hours Studied",
     ylab = "Frequency",
     col = "green",
     border = "white")


# Boxplot: Test Score by Gender
boxplot(Test_Score ~ Gender, data = student_data,
        main = "Test Score Comparison by Gender",
        xlab = "Gender",
        ylab = "Test Score",
        col = c("pink", "lightgreen"),   # Female, Male colors
        border = "black")


# Scatter Plot: Test Score Trend Across Students
plot(student_data$Student_ID, student_data$Test_Score,
     type = "o",
     main = "Test Score Trend Across Students",
     xlab = "Student ID",
     ylab = "Test Score",
     col = "purple",
     pch = 16)



# Scatter Plot: Attendance Trend Across Students
plot(student_data$Student_ID, student_data$Attendance,
     type = "o",
     main = "Attendance Trend Across Students",
     xlab = "Student ID",
     ylab = "Attendance",
     col = "red",
     pch = 16)


