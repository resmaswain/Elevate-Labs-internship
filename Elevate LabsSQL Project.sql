create database EmployeeAttendanceDB;

use EmployeeAttendanceDB;

--Department Table
CREATE TABLE Departments (
    dept_id INT IDENTITY(1,1) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);

-- Roles Table
CREATE TABLE Roles (
    role_id INT IDENTITY(1,1) PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL
);

-- Employees Table
CREATE TABLE Employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT FOREIGN KEY REFERENCES Departments(dept_id),
    role_id INT FOREIGN KEY REFERENCES Roles(role_id),
    hire_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Active'
);

-- Attendance Table
CREATE TABLE Attendance (
    att_id INT IDENTITY(1,1) PRIMARY KEY,
    emp_id INT FOREIGN KEY REFERENCES Employees(emp_id),
    att_date DATE NOT NULL,
    check_in TIME NULL,
    check_out TIME NULL,
    status VARCHAR(20) DEFAULT 'Present',
    created_at DATETIME DEFAULT GETDATE()
);

-- Departments
INSERT INTO Departments(dept_name) VALUES
('HR'), ('IT'), ('Finance'), ('Sales'), ('Operations');

-- Roles
INSERT INTO Roles (role_name) VALUES
('Manager'), ('Team Lead'), ('Analyst'), ('Developer'), ('Intern');

-- Employees (sample, bulk insert with Excel/SSMS for 200+)
INSERT INTO Employees (emp_name, dept_id, role_id, hire_date)
VALUES
('Sumit Singh', 2, 4, '2023-07-26'),
('Alka Yadav', 1, 5, '2021-10-04'),
('Akash Roy', 4, 2, '2023-07-04'),
('Vikram Rajput', 1, 4, '2024-11-01'),
('Gita Devi', 5, 3, '2022-11-25'),
('Moshin Singh', 1, 2, '2023-10-06'),
('Garima Yadav', 2, 3, '2024-07-02'),
('Soniya Shinde', 3, 4, '2024-03-14'),
('Priyanka Pawar', 3, 4, '2023-03-15'),
('Priyanka Patil', 4, 3, '2024-11-25'),
('Priyanka Yadav', 5, 4, '2022-05-23'),
('Priyanka Mandan', 3, 4, '2023-07-09'),
('Gulshan Khan', 4, 4, '2024-03-01'),
('Gurmeet Kaur', 2, 1, '2023-12-09'),
('Bharti Singh', 2, 5, '2022-06-26'),
('Virat Rajput', 1, 5, '2024-08-05'),
('Sonali Samal', 2, 2, '2021-01-16'),
('Runia Samal', 3, 4, '2024-12-19'),
('Usha Chaudhary', 3, 2, '2021-12-04'),
('Rajlaxmi Behera', 5, 3, '2021-03-12'),
('Pratibha patil', 1, 5, '2024-03-18'),
('Sonam Kapoor', 5, 5, '2021-12-05'),
('Kareena Kapoor', 5, 4, '2021-04-23'),
('Karishma Kapoor', 1, 3, '2022-04-25'),
('Ranbir Kapoor', 1, 5, '2024-07-27'),
('Janvi Kapoor', 2, 1, '2021-02-18'),
('Sonu Nigam', 4, 5, '2021-08-14'),
('Joyti Singh', 2, 1, '2021-08-22'),
('Deepika Singh', 5, 1, '2022-06-16'),
('Salman Khan', 4, 1, '2021-09-15'),
('Amir Khan', 5, 5, '2023-08-28'),
('Shahruk Khan', 1, 1, '2021-03-24'),
('Rohit Yadav', 4, 2, '2023-05-31'),
('Virat Kholi', 4, 5, '2021-06-15'),
('Sachin Jadhav', 2, 5, '2023-08-22'),
('Ankit Kumar', 5, 4, '2023-04-02'),
('Sachin Tendulkar', 3, 2, '2022-12-14'),
('Rajiv Singh', 5, 5, '2021-10-03'),
('Roshan Singh', 4, 4, '2024-04-01'),
('Piyush Yadav', 5, 4, '2022-07-10'),
('Avantika patil', 1, 1, '2024-05-19'),
('Rohit Roy', 4, 4, '2022-01-03'),
('Rani Mukharjee', 2, 4, '2021-10-04'),
('Ronit Roy', 5, 3, '2024-07-11'),
('Ricky Singh', 3, 4, '2023-04-21'),
('Sudha Boity', 4, 3, '2023-10-10'),
('Sumitra Ojha ', 1, 4, '2022-02-17'),
('Arti Singh', 1, 2, '2022-02-01'),
('Abhishek Kumar', 3, 3, '2021-12-17'),
('Radhika Mandan', 5, 4, '2023-02-01'),
('Jayesh Mandan', 1, 2, '2021-08-11'),
('Rahul Mandan', 4, 3, '2022-03-12'),
('Shobha Mandan', 5, 1, '2023-04-29'),
('Sagnik Sarkar', 3, 5, '2023-08-10'),
('Sharadha shinde', 1, 1, '2021-06-24'),
('Neelam Singh', 1, 2, '2021-01-15'),
('Pradeep Singh', 3, 5, '2021-11-12'),
('Tushar Rout', 4, 4, '2021-04-11'),
('Adwait Das', 1, 5, '2022-09-18'),
('Peter Jones', 1, 2, '2021-04-13'),
('John Doe', 5, 1, '2024-08-16'),
('Jane Simth', 3, 1, '2023-05-05'),
('Mary Lee', 2, 1, '2023-05-30'),
('Robert Brown', 1, 2, '2023-03-27'),
('Arjun Sharma', 1, 1, '2023-05-18'),
('Priya Singh', 2, 5, '2021-09-09'),
('Ananya Jain', 2, 1, '2021-10-21'),
('Siddharth Patel', 1, 1, '2022-12-31'),
('Rohan Gupta', 4, 5, '2024-04-18'),
('Neha Agarwal', 2, 4, '2024-04-26'),
('Shreya Reddy', 5, 5, '2023-01-24'),
('Aarav Sharma', 2, 4, '2021-05-19'),
('Kunal Gupta', 2, 4, '2021-11-15'),
('Sharmil Gupta', 4, 2, '2024-05-18'),
('Aditya Mishra', 5, 2, '2021-01-14'),
('Dhruv Jain', 2, 4, '2023-12-20'),
('Vihaan Khanna', 3, 3, '2022-08-18'),
('Priya Kumari', 4, 5, '2022-11-18'),
('Diya Sharma', 5, 4, '2022-09-08'),
('Navaya Gupta', 3, 3, '2024-11-25'),
('Riya Jain', 1, 4, '2022-11-10'),
('Arjun Reddy', 3, 2, '2021-03-22'),
('Karthik Iyer', 2, 3, '2023-08-22'),
('Pranav Naidu', 1, 4, '2021-10-13'),
('Sanjay Rao', 2, 5, '2022-07-29'),
('Ganesh Hegde', 2, 1, '2021-09-17'),
('Siddharh Menon', 2, 5, '2023-02-24'),
('Pooja Reddy', 4, 3, '2023-05-16'),
('Sneha Iyer', 3, 1, '2021-05-12'),
('Aishwarya Nair', 4, 5, '2021-05-17'),
('Lakshmi Pillai', 3, 3, '2023-04-05'),
('Deepika Rao', 2, 1, '2021-10-08'),
('Sai Pallavi', 4, 4, '2023-05-10'),
('Arnab Banerjee', 3, 2, '2024-09-24'),
('Sourav Ganguly', 2, 3, '2023-08-26'),
('Anirban Chatterjee', 4, 1, '2024-03-13'),
('Rahul Das', 5, 5, '2023-10-30'),
('Debasmita Ghosh', 3, 3, '2023-03-21'),
('Ankita Sen', 5, 3, '2023-04-09'),
('Mousami Sarkar', 3, 4, '2021-04-24'),
('Poulomi Mitra', 1, 1, '2024-12-19'),
('Akshay Patel', 1, 3, '2024-02-27'),
('Jigar Shah', 3, 4, '2022-10-03'),
('Parth Joshi', 4, 3, '2022-06-10'),
('Nikhil Desai', 4, 3, '2021-08-22'),
('Soham Mehra', 2, 1, '2023-04-14'),
('Aarohi Patel', 5, 2, '2022-03-28'),
('Jiya Shah', 2, 1, '2022-11-18'),
('Mahi Mehta', 4, 1, '2023-05-26'),
('Hetal Vyas', 1, 3, '2023-03-15'),
('Ketaki Deshpande', 5, 2, '2021-10-17'),
('Sana Khan', 3, 4, '2022-03-31'),
('Hina Begum', 3, 2, '2022-07-14'),
('Zoya Khan', 1, 5, '2022-05-26'),
('Farah Khan', 5, 5, '2024-05-15'),
('Olivia Smith', 3, 4, '2022-05-09'),
('Liam Johnson', 5, 4, '2024-06-05'),
('Ava Jones', 3, 3, '2021-03-05'),
('Noah Brown', 5, 2, '2021-01-26'),
('Mia Moore', 3, 4, '2021-07-04'),
('James Wilson', 2, 2, '2021-07-04'),
('Lucas Thomas', 4, 1, '2024-07-05'),
('Ella Harris', 2, 4, '2022-12-15'),
('Henry Young', 3, 2, '2024-07-19'),
('Victoria King', 4, 3, '2022-12-11'),
('Vedika Singh', 2, 4, '2022-06-10'),
('Saanvi Jaiswal', 2, 5, '2024-03-10'),
('Riya Khanna', 2, 4, '2021-07-29'),
('James Miller', 1, 5, '2023-10-30'),
('Elizabeth Davis', 4, 1, '2021-12-15'),
('William Jones', 1, 1, '2021-06-28'),
('Aria Chen', 2, 3, '2022-05-08'),
('Kai Lawson', 5, 3, '2024-03-25'),
('Zoe Sterling', 2, 3, '2021-04-18'),
('Jasper Reid', 4, 2, '2023-04-26'),
('Lyra Vance', 2, 5, '2021-08-30'),
('Rowan Foster', 3, 4, '2024-07-25'),
('Willow Brooks', 5, 2, '2022-11-22'),
('Forrest Green', 5, 5, '2024-09-14'),
('River Stone', 3, 4, '2023-02-07'),
('Autumn Fields', 4, 2, '2024-12-28'),
('Alexander Blackwood', 2, 2, '2021-05-14'),
('Harrison Grant', 3, 1, '2021-06-01'),
('Caleb Finch', 4, 1, '2022-11-16'),
('Juliet Hayes', 2, 2, '2021-08-25'),
('Arthur Beckett', 2, 4, '2024-12-02'),
('Leo Wilde', 5, 2, '2024-02-16'),
('John Adams', 2, 3, '2021-04-14'),
('Mary Brown', 1, 4, '2023-09-16'),
('David White', 1, 5, '2023-09-29'),
('Jennifer Green', 5, 4, '2024-05-25'),
('Michael Clark', 4, 5, '2023-10-11'),
('Ethan Hayes', 3, 3, '2024-01-27'),
('Chloe Bennett', 4, 2, '2021-10-14'),
('Mason Young', 3, 5, '2021-07-03'),
('Harper Lee', 3, 4, '2022-03-02'),
('Landon Fisher', 4, 4, '2022-10-06'),
('Silas Birch', 1, 1, '2024-12-07'),
('Ariel Summers', 3, 3, '2021-03-01'),
('Orion Rivers', 5, 5, '2023-04-17'),
('Luna Hayes', 3, 3, '2024-07-30'),
('Grant Harrison', 2, 1, '2021-07-28'),
('Wyatt Marshall', 5, 5, '2022-02-10'),
('Ava Sinclair', 4, 2, '2022-10-28'),
('Cole Black', 3, 3, '2024-07-04'),
('Paige Sterling', 1, 3, '2022-09-13'),
('Felix Flynn', 1, 4, '2021-02-19'),
('Iris Wilde', 2, 5, '2021-06-23'),
('August Finch', 1, 2, '2024-11-06'),
('Cora Bell', 4, 5, '2023-10-22'),
('Keo Quinn', 4, 5, '2021-06-07'),
('Clara Mae', 4, 2, '2024-07-19'),
('Taylor Swift', 4, 2, '2022-06-24'),
('William smith', 1, 2, '2022-04-17'),
('Thomas Baker', 5, 2, '2024-06-27'),
('George Clark', 1, 4, '2022-10-25'),
('Arthur Wright', 5, 4, '2022-09-13'),
('Leo Morgan', 3, 4, '2024-04-27'),
('Owen Hughes', 1, 4, '2023-01-30'),
('Felix Anderson', 4, 1, '2022-12-10'),
('Sebastian Walker', 5, 1, '2021-03-09'),
('Harrison Gray', 4, 4, '2022-06-28'),
('Cameron Miller', 5, 3, '2023-06-21'),
('Jordan Brooks', 4, 3, '2022-05-27'),
('Riley Thompson', 4, 4, '2022-06-20'),
('Blake Wilson', 2, 1, '2023-12-14'),
('Rowan Evans', 3, 2, '2022-12-11'),
('Daniel Evans', 1, 1, '2024-02-08'),
('Catherine Baker', 1, 2, '2024-03-02'),
('Rosemary Clark', 1, 2, '2021-02-13'),
('Phillip Hall', 3, 2, '2021-08-10'),
('Julia Roberts', 4, 3, '2023-01-14'),
('Everett Hayes', 3, 1, '2023-12-06'),
('Skylar Bennett', 4, 4, '2021-01-17'),
('Finnley Cooper', 4, 2, '2023-08-18'),
('Julian Montgomery', 5, 5, '2021-05-05'),
('Alister Balckwood', 1, 1, '2021-03-28'),
('Eleanora Thorne', 1, 4, '2021-04-17'),
('Rex Sterling', 5, 5, '2022-12-06'),
('Blair Sterling', 1, 2, '2022-03-21');


--Attendence
INSERT INTO Attendance (emp_id, att_date, check_in, check_out, status)
 VALUES
 (1, '2025-08-10', '10:19:00', '14:14:00', 'Half Day'),
 (2, '2025-08-07', '09:47:00', '18:41:00', 'Late'),
 (3, '2025-08-30', '09:13:00', '17:29:00', 'Late'),
 (4, '2025-08-01', '10:24:00', '14:06:00', 'Half Day'),
 (5, '2025-08-24', NULL, NULL, 'Absent'),
 (6, '2025-08-12', '09:23:00', '17:16:00', 'Present'),
 (7, '2025-08-22', '10:11:00', '14:17:00', 'Half Day'),
 (8, '2025-08-26', '10:01:00', '14:16:00', 'Half Day'),
 (9, '2025-08-16', NULL, NULL, 'Absent'),
 (10, '2025-08-16', '09:00:00', '17:06:00', 'Late'),
 (11, '2025-08-14', '10:13:00', '17:55:00', 'Late'),
 (12, '2025-08-27', NULL, NULL, 'Absent'),
 (13, '2025-08-22', '10:21:00', '17:17:00', 'Late'),
 (14, '2025-08-18', NULL, NULL, 'Absent'),
 (15, '2025-08-08', '09:23:00', '18:24:00', 'Present'),
 (16, '2025-08-02', '09:44:00', '18:29:00', 'Present'),
 (17, '2025-08-12', NULL, NULL, 'Absent'),
 (18, '2025-08-04', '09:56:00', '17:24:00', 'Present'),
 (19, '2025-08-21', '10:18:00', '17:11:00', 'Late'),
 (20, '2025-08-07', NULL, NULL, 'Absent'),
 (21, '2025-08-30', '10:06:00', '17:01:00', 'Present'),
 (22, '2025-08-12', NULL, NULL, 'Absent'),
 (23, '2025-08-15', NULL, NULL, 'Absent'),
 (24, '2025-08-14', NULL, NULL, 'Absent'),
 (25, '2025-08-21', NULL, NULL, 'Absent'),
 (26, '2025-08-23', '10:10:00', '14:23:00', 'Half Day'),
 (27, '2025-08-15', '10:28:00', '14:04:00', 'Half Day'),
 (28, '2025-08-25', NULL, NULL, 'Absent'),
 (29, '2025-08-24', '10:08:00', '17:36:00', 'Present'),
 (30, '2025-08-11', NULL, NULL, 'Absent'),
 (31, '2025-08-30', '09:35:00', '18:12:00', 'Present'),
 (32, '2025-08-17', '10:30:00', '18:53:00', 'Present'),
 (33, '2025-08-23', '09:49:00', '17:05:00', 'Present'),
 (34, '2025-08-27', '10:19:00', '18:28:00', 'Present'),
 (35, '2025-08-19', '09:06:00', '17:49:00', 'Present'),
 (36, '2025-08-29', '10:20:00', '14:06:00', 'Half Day'),
 (37, '2025-08-16', '09:37:00', '17:28:00', 'Present'),
 (38, '2025-08-28', '09:20:00', '18:43:00', 'Late'),
 (39, '2025-08-07', '09:59:00', '17:49:00', 'Late'),
 (40, '2025-08-07', NULL, NULL, 'Absent'),
 (41, '2025-08-14', '09:42:00', '18:58:00', 'Present'),
 (42, '2025-08-25', '10:01:00', '18:13:00', 'Present'),
 (43, '2025-08-09', '10:28:00', '14:25:00', 'Half Day'),
 (44, '2025-08-28', NULL, NULL, 'Absent'),
 (45, '2025-08-19', NULL, NULL, 'Absent'),
 (46, '2025-08-18', '10:07:00', '17:43:00', 'Present'),
 (47, '2025-08-29', NULL, NULL, 'Absent'),
 (48, '2025-08-24', NULL, NULL, 'Absent'),
 (49, '2025-08-24', '10:04:00', '14:14:00', 'Half Day'),
 (50, '2025-08-17', '09:04:00', '17:50:00', 'Late'),
 (51, '2025-08-10', '10:26:00', '18:21:00', 'Late'),
 (52, '2025-08-25', '10:03:00', '17:29:00', 'Late'),
 (53, '2025-08-12', '09:21:00', '18:57:00', 'Present'),
 (54, '2025-08-22', '10:15:00', '14:14:00', 'Half Day'),
 (55, '2025-08-18', '09:06:00', '17:28:00', 'Late'),
 (56, '2025-08-22', NULL, NULL, 'Absent'),
 (57, '2025-08-26', '09:31:00', '17:32:00', 'Late'),
 (58, '2025-08-09', NULL, NULL, 'Absent'),
 (59, '2025-08-03', NULL, NULL, 'Absent'),
 (60, '2025-08-03', '10:07:00', '14:07:00', 'Half Day'),
 (61, '2025-08-17', '10:02:00', '18:59:00', 'Late'),
 (62, '2025-08-15', '09:07:00', '18:26:00', 'Present'),
 (63, '2025-08-28', '09:03:00', '17:23:00', 'Late'),
 (64, '2025-08-29', '10:25:00', '17:03:00', 'Late'),
 (65, '2025-08-23', '10:16:00', '18:01:00', 'Late'),
 (66, '2025-08-10', '10:16:00', '14:17:00', 'Half Day'),
(67, '2025-08-18', '10:03:00', '18:42:00', 'Late'),
 (68, '2025-08-05', '10:23:00', '14:26:00', 'Half Day'),
 (69, '2025-08-17', '10:09:00', '17:42:00', 'Present'),
 (70, '2025-08-16', '10:16:00', '14:21:00', 'Half Day'),
 (71, '2025-08-07', NULL, NULL, 'Absent'),
 (72, '2025-08-26', '09:31:00', '18:47:00', 'Late'),
 (73, '2025-08-27', NULL, NULL, 'Absent'),
 (74, '2025-08-23', '09:01:00', '18:46:00', 'Late'),
 (75, '2025-08-06', '10:22:00', '18:20:00', 'Late'),
 (76, '2025-08-21', '09:46:00', '18:47:00', 'Late'),
 (77, '2025-08-30', '09:35:00', '17:57:00', 'Late'),
 (78, '2025-08-05', '09:33:00', '18:10:00', 'Present'),
 (79, '2025-08-30', '10:22:00', '18:38:00', 'Present'),
 (80, '2025-08-30', '10:24:00', '14:23:00', 'Half Day'),
 (81, '2025-08-17', '10:24:00', '14:09:00', 'Half Day'),
 (82, '2025-08-18', NULL, NULL, 'Absent'),
 (83, '2025-08-02', '10:03:00', '18:35:00', 'Present'),
 (84, '2025-08-24', '09:53:00', '17:01:00', 'Present'),
 (85, '2025-08-07', '10:14:00', '14:21:00', 'Half Day'),
 (86, '2025-08-30', '09:47:00', '19:00:00', 'Late'),
 (87, '2025-08-12', '09:06:00', '17:17:00', 'Late'),
 (88, '2025-08-05', '10:18:00', '14:15:00', 'Half Day'),
 (89, '2025-08-10', '09:12:00', '17:22:00', 'Late'),
 (90, '2025-08-10', '09:20:00', '18:31:00', 'Present'),
 (91, '2025-08-16', '10:03:00', '18:27:00', 'Present'),
 (92, '2025-08-19', NULL, NULL, 'Absent'),
 (93, '2025-08-20', '09:24:00', '18:44:00', 'Present'),
 (94, '2025-08-16', NULL, NULL, 'Absent'),
 (95, '2025-08-14', '09:17:00', '18:48:00', 'Present'),
 (96, '2025-08-29', NULL, NULL, 'Absent'),
 (97, '2025-08-26', '10:03:00', '17:08:00', 'Late'),
 (98, '2025-08-11', '10:10:00', '18:11:00', 'Present'),
 (99, '2025-08-06', '09:51:00', '17:23:00', 'Late'),
 (100, '2025-08-08', '10:20:00', '14:23:00', 'Half Day'),
 (101, '2025-08-27', NULL, NULL, 'Absent'),
 (102, '2025-08-01', '10:26:00', '14:29:00', 'Half Day'),
 (103, '2025-08-26', '10:24:00', '14:11:00', 'Half Day'),
 (104, '2025-08-19', NULL, NULL, 'Absent'),
 (105, '2025-08-19', NULL, NULL, 'Absent'),
 (106, '2025-08-18', '09:37:00', '18:51:00', 'Late'),
 (107, '2025-08-03', '10:24:00', '14:18:00', 'Half Day'),
 (108, '2025-08-27', '10:04:00', '14:25:00', 'Half Day'),
 (109, '2025-08-13', '09:45:00', '18:31:00', 'Late'),
 (110, '2025-08-13', '10:24:00', '14:11:00', 'Half Day'),
 (111, '2025-08-13', '10:05:00', '18:34:00', 'Present'),
 (112, '2025-08-12', NULL, NULL, 'Absent'),
 (113, '2025-08-03', '10:19:00', '18:24:00', 'Late'),
 (114, '2025-08-06', NULL, NULL, 'Absent'),
 (115, '2025-08-16', '10:14:00', '14:10:00', 'Half Day'),
 (116, '2025-08-09', NULL, NULL, 'Absent'),
 (117, '2025-08-30', '09:51:00', '17:19:00', 'Late'),
 (118, '2025-08-01', NULL, NULL, 'Absent'),
 (119, '2025-08-27', '10:10:00', '18:38:00', 'Present'),
 (120, '2025-08-09', '09:53:00', '17:33:00', 'Late'),
 (121, '2025-08-02', '09:43:00', '18:20:00', 'Present'),
 (122, '2025-08-05', '10:14:00', '17:17:00', 'Present'),
 (123, '2025-08-07', '10:12:00', '17:01:00', 'Late'),
 (124, '2025-08-23', '10:11:00', '18:28:00', 'Present'),
 (125, '2025-08-25', '09:01:00', '17:12:00', 'Late'),
 (126, '2025-08-10', NULL, NULL, 'Absent'),
 (127, '2025-08-02', NULL, NULL, 'Absent'),
 (128, '2025-08-22', '10:15:00', '14:04:00', 'Half Day'),
 (129, '2025-08-06', '10:08:00', '14:26:00', 'Half Day'),
 (130, '2025-08-27', '10:17:00', '17:52:00', 'Late'),
 (131, '2025-08-08', NULL, NULL, 'Absent'),
 (132, '2025-08-19', NULL, NULL, 'Absent'),
 (133, '2025-08-04', '10:03:00', '18:04:00', 'Late'),
 (134, '2025-08-20', '10:28:00', '14:05:00', 'Half Day'),
 (135, '2025-08-29', '09:44:00', '18:12:00', 'Present'),
 (136, '2025-08-22', '10:18:00', '14:12:00', 'Half Day'),
 (137, '2025-08-12', '10:24:00', '14:01:00', 'Half Day'),
 (138, '2025-08-06', '09:55:00', '17:55:00', 'Late'),
(139, '2025-08-17', NULL, NULL, 'Absent'),
 (140, '2025-08-12', NULL, NULL, 'Absent'),
 (141, '2025-08-16', '10:17:00', '14:28:00', 'Half Day'),
 (142, '2025-08-01', NULL, NULL, 'Absent'),
 (143, '2025-08-26', '10:23:00', '18:56:00', 'Late'),
 (144, '2025-08-03', NULL, NULL, 'Absent'),
 (145, '2025-08-28', '10:06:00', '14:00:00', 'Half Day'),
 (146, '2025-08-24', NULL, NULL, 'Absent'),
 (147, '2025-08-13', '10:12:00', '14:13:00', 'Half Day'),
 (148, '2025-08-30', '10:29:00', '14:16:00', 'Half Day'),
 (149, '2025-08-19', '09:54:00', '18:24:00', 'Late'),
 (150, '2025-08-18', '10:24:00', '17:49:00', 'Present'),
 (151, '2025-08-29', '09:27:00', '18:26:00', 'Late'),
 (152, '2025-08-02', '10:08:00', '18:59:00', 'Present'),
 (153, '2025-08-05', '10:21:00', '18:30:00', 'Late'),
 (154, '2025-08-27', '09:41:00', '18:53:00', 'Late'),
 (155, '2025-08-21', '10:13:00', '14:04:00', 'Half Day'),
 (156, '2025-08-06', '10:04:00', '18:36:00', 'Late'),
 (157, '2025-08-08', '09:29:00', '18:59:00', 'Late'),
 (158, '2025-08-22', NULL, NULL, 'Absent'),
 (159, '2025-08-01', '09:06:00', '17:13:00', 'Present'),
 (160, '2025-08-24', '09:27:00', '17:13:00', 'Late'),
 (161, '2025-08-09', '10:19:00', '14:23:00', 'Half Day'),
 (162, '2025-08-29', NULL, NULL, 'Absent'),
 (163, '2025-08-16', '09:25:00', '17:10:00', 'Late'),
 (164, '2025-08-20', '10:01:00', '17:49:00', 'Present'),
 (165, '2025-08-28', '10:24:00', '14:23:00', 'Half Day'),
 (166, '2025-08-29', NULL, NULL, 'Absent'),
 (167, '2025-08-09', '09:33:00', '17:30:00', 'Present'),
 (168, '2025-08-17', NULL, NULL, 'Absent'),
 (169, '2025-08-18', '09:06:00', '18:40:00', 'Late'),
 (170, '2025-08-13', '09:35:00', '17:42:00', 'Late'),
 (171, '2025-08-15', '10:22:00', '14:11:00', 'Half Day'),
 (172, '2025-08-09', '10:05:00', '18:59:00', 'Present'),
 (173, '2025-08-10', '10:15:00', '18:39:00', 'Present'),
 (174, '2025-08-16', '09:55:00', '17:35:00', 'Present'),
 (175, '2025-08-14', '10:25:00', '14:17:00', 'Half Day'),
 (176, '2025-08-03', NULL, NULL, 'Absent'),
 (177, '2025-08-17', NULL, NULL, 'Absent'),
 (178, '2025-08-07', '10:17:00', '14:25:00', 'Half Day'),
 (179, '2025-08-06', NULL, NULL, 'Absent'),
 (180, '2025-08-16', '10:07:00', '14:04:00', 'Half Day'),
 (181, '2025-08-21', '10:09:00', '14:25:00', 'Half Day'),
 (182, '2025-08-14', NULL, NULL, 'Absent'),
 (183, '2025-08-26', '10:05:00', '17:05:00', 'Present'),
 (184, '2025-08-10', NULL, NULL, 'Absent'),
 (185, '2025-08-26', '09:03:00', '17:04:00', 'Present'),
 (186, '2025-08-11', '10:23:00', '14:15:00', 'Half Day'),
 (187, '2025-08-16', '10:05:00', '17:57:00', 'Present'),
 (188, '2025-08-26', '09:21:00', '17:44:00', 'Present'),
 (189, '2025-08-16', NULL, NULL, 'Absent'),
 (190, '2025-08-24', '09:29:00', '17:39:00', 'Present'),
 (191, '2025-08-29', NULL, NULL, 'Absent'),
 (192, '2025-08-12', '09:37:00', '18:22:00', 'Late'),
 (193, '2025-08-24', '09:49:00', '17:50:00', 'Late'),
 (194, '2025-08-14', '10:26:00', '14:30:00', 'Half Day'),
 (195, '2025-08-15', '10:21:00', '17:40:00', 'Late'),
 (196, '2025-08-05', '10:05:00', '14:26:00', 'Half Day'),
 (197, '2025-08-07', '09:11:00', '18:29:00', 'Late'),
 (198, '2025-08-08', NULL, NULL, 'Absent'),
 (199, '2025-08-14', '09:56:00', '17:56:00', 'Late'),
 (200, '2025-08-12', '09:05:00', '17:18:00', 'Present');


DECLARE @i INT = 1;
DECLARE @emp_count INT;

SELECT @emp_count = COUNT(*) FROM Employees;

WHILE @i <= 600 -- 200 employees × 3 months
BEGIN
    INSERT INTO Attendance (emp_id, att_date, check_in, check_out, status)
    VALUES (
        ((@i - 1) % @emp_count) + 1, -- cycle employee IDs
        DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 30, 
                DATEADD(MONTH, (@i / @emp_count), '2025-08-01')), -- Aug, Sep, Oct
        CAST(DATEADD(MINUTE, (ABS(CHECKSUM(NEWID())) % 120), '09:00:00') AS TIME),
        CAST(DATEADD(MINUTE, (ABS(CHECKSUM(NEWID())) % 120), '17:00:00') AS TIME),
        CASE (ABS(CHECKSUM(NEWID())) % 4)
            WHEN 0 THEN 'Present'
            WHEN 1 THEN 'Late'
            WHEN 2 THEN 'Absent'
            ELSE 'Half Day'
        END
    );

    SET @i = @i + 1;
END;

 select * from [dbo].[Employees];
 select * from [dbo].[Attendance];

 --Monthly Attendence count per Employee
 select
    emp_id,
	YEAR(att_date) as Year,
	Month(att_date) as Month,
	count(*) as TotalDays,
	sum(case when status ='Present' then 1 else 0 end) as Presentdays,
	sum(case when status ='Absent' then 1 else 0 end) as Absentdays
From Attendance
Group by emp_id, YEAR(att_date), Month(att_date)
order by emp_id,Year,month;

---Department level Attendence
SELECT 
    d.dept_name,
    YEAR(a.att_date) AS Year,
    MONTH(a.att_date) AS Month,
    COUNT(*) AS TotalAttendance,
    SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS TotalPresent,
	sum(case when a.status = 'Absent' then 1 else 0 end) as TotalAbsent
FROM Attendance a
JOIN Employees e ON a.emp_id = e.emp_id
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.dept_name, YEAR(a.att_date), MONTH(a.att_date)
ORDER BY d.dept_name, Year, Month;


 -- 1. Monthly attendance summary per employee
SELECT 
    e.emp_id,
    e.emp_name,
    FORMAT(a.att_date, 'yyyy-MM') AS Month,
    COUNT(*) AS TotalDays,
    SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS PresentDays,
    SUM(CASE WHEN a.status = 'Absent' THEN 1 ELSE 0 END) AS AbsentDays,
    SUM(CASE WHEN a.status = 'Late' THEN 1 ELSE 0 END) AS LateDays,
    SUM(CASE WHEN a.status = 'Half Day' THEN 1 ELSE 0 END) AS HalfDays
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
GROUP BY e.emp_id, e.emp_name, FORMAT(a.att_date, 'yyyy-MM')
ORDER BY e.emp_id, Month;


-- 2. Employees who arrived late (after 9:30 AM)
SELECT 
    e.emp_id,
    e.emp_name, 
    a.att_date, 
    a.check_in
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.check_in > '09:30:00'
  AND a.status NOT IN ('Absent','Half Day')
ORDER BY a.att_date, e.emp_id;

-- Auto-set created_at timestamp
CREATE TRIGGER trg_SetCreatedAt
ON Attendance
AFTER INSERT
AS
BEGIN
    UPDATE a
    SET a.created_at = GETDATE()
    FROM Attendance a
    INNER JOIN inserted i ON a.att_id = i.att_id;
END;
GO

-- Auto-set status based on check-in/out
CREATE TRIGGER trg_SetStatus
ON Attendance
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE a
    SET a.status = 
        CASE 
            WHEN a.check_in IS NULL THEN 'Absent'
            WHEN a.check_in > '09:30:00' THEN 'Late'
            WHEN a.check_in IS NOT NULL AND a.check_out IS NULL THEN 'Half Day'
            ELSE 'Present'
        END
    FROM Attendance a
    INNER JOIN inserted i ON a.att_id = i.att_id;
END;
GO
Select * from Attendance;

--Function to Calculate Total Work Hours
CREATE FUNCTION fn_TotalWorkHours(@check_in TIME, @check_out TIME)
RETURNS DECIMAL(5,2)
AS
BEGIN
    DECLARE @minutes INT;
    IF @check_in IS NULL OR @check_out IS NULL
        RETURN 0;
    SET @minutes = DATEDIFF(MINUTE, @check_in, @check_out);
    RETURN CAST(@minutes AS DECIMAL(5,2)) / 60;
END;
GO

-- Example usage:
SELECT att_id, emp_id, dbo.fn_TotalWorkHours(check_in, check_out) AS WorkHours
FROM Attendance;

--Genrate Repots using Group By and Having
-- Average work hours per employee
SELECT 
    e.emp_name,
    AVG(DATEDIFF(HOUR, a.check_in, a.check_out)) AS AvgWorkHours
FROM Employees e
JOIN Attendance a ON e.emp_id = a.emp_id
WHERE a.status = 'Present'
GROUP BY e.emp_name
HAVING AVG(DATEDIFF(HOUR, a.check_in, a.check_out)) >= 6;

-- Department-level attendance summary
SELECT 
    d.dept_name,
    COUNT(*) AS TotalRecords,
    SUM(CASE WHEN a.status = 'Present' THEN 1 ELSE 0 END) AS PresentCount,
    SUM(CASE WHEN a.status = 'Absent' THEN 1 ELSE 0 END) AS AbsentCount
FROM Departments d
JOIN Employees e ON d.dept_id = e.dept_id
JOIN Attendance a ON e.emp_id = a.emp_id
GROUP BY d.dept_name;