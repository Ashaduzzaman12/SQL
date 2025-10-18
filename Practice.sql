CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender CHAR(1),
    age INT,
    department VARCHAR(20),
    gpa DECIMAL(3,2),
    city VARCHAR(30),
    scholarship VARCHAR(5),
    year_of_enrollment INT
);

INSERT INTO Students (student_id, first_name, last_name, gender, age, department, gpa, city, scholarship, year_of_enrollment)
VALUES
(101, 'Arif', 'Hossain', 'M', 22, 'CSE', 3.85, 'Dhaka', 'Yes', 2020),
(102, 'Rahima', 'Akter', 'F', 21, 'EEE', 3.40, 'Chittagong', 'No', 2021),
(103, 'Tareq', 'Hasan', 'M', 23, 'CSE', 2.95, 'Rajshahi', 'No', 2019),
(104, 'Nadia', 'Islam', 'F', 20, 'BBA', 3.60, 'Dhaka', 'Yes', 2022),
(105, 'Farhan', 'Kabir', 'M', 24, 'CSE', 3.20, 'Sylhet', 'No', 2019),
(106, 'Lubna', 'Rahman', 'F', 22, 'EEE', 3.95, 'Dhaka', 'Yes', 2020),
(107, 'Rafi', 'Uddin', 'M', 21, 'CSE', 3.10, 'Chittagong', 'No', 2021),
(108, 'Tanima', 'Khatun', 'F', 23, 'BBA', 3.50, 'Rajshahi', 'Yes', 2019),
(109, 'Mehedi', 'Hasan', 'M', 22, 'EEE', 3.75, 'Dhaka', 'No', 2020),
(110, 'Faria', 'Noor', 'F', 20, 'CSE', 3.88, 'Sylhet', 'Yes', 2022);
1. SELECT * FROM students WHERE department != 'EEE';

2. 

3. SELECT * FROM students WHERE department = 'CSE' OR department = 'EEE';

4. SELECT COUNT(*) AS scholar_count FROM students WHERE scholarship = 'Yes';

5. SELECT * FROM students WHERE gpa = (SELECT MAX(gpa) FROM students)
   OR gpa = (SELECT MIN(gpa) FROM students);

6. 

7. UPDATE students SET gpa = gpa + 0.1 WHERE department = 'CSE';

8. DELETE FROM students WHERE gpa <= 3.0;

9. ALTER TABLE students ADD COLUMN phone_number VARCHAR(15);

10. SELECT * FROM students WHERE scholarship = 'Yes' AND gpa BETWEEN 3.5 AND 4.0;
