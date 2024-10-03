-- Create Departments table first (needed for DepartmentEmployee table)
CREATE TABLE Departments (
    DepartmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    DepartmentName TEXT NOT NULL
);

-- Create Employees table second (needed for multiple foreign key references)
CREATE TABLE Employees (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT UNIQUE NOT NULL,
    HireDate DATE NOT NULL,
    ManagerID INTEGER,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Create Projects table (references Employees)
CREATE TABLE Projects (
    ProjectID INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectName TEXT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Budget REAL,
    ManagerID INTEGER,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);

-- Create Tasks table (references both Employees and Projects)
CREATE TABLE Tasks (
    TaskID INTEGER PRIMARY KEY AUTOINCREMENT,
    TaskName TEXT NOT NULL,
    DueDate DATE NOT NULL,
    Status TEXT NOT NULL CHECK (Status IN ('Pending', 'In Progress', 'Completed')),
    AssignedTo INTEGER,
    ProjectID INTEGER,
    FOREIGN KEY (AssignedTo) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create EmployeeProjectAssignments table (references Employees and Projects)
CREATE TABLE EmployeeProjectAssignments (
    AssignmentID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID INTEGER NOT NULL,
    ProjectID INTEGER NOT NULL,
    Role TEXT NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Create Salaries table (references Employees)
CREATE TABLE Salaries (
    SalaryID INTEGER PRIMARY KEY AUTOINCREMENT,
    EmployeeID INTEGER NOT NULL,
    Amount REAL NOT NULL,
    EffectiveDate DATE NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Create DepartmentEmployee table (references both Employees and Departments)
CREATE TABLE DepartmentEmployee (
    DepartmentEmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,
    DepartmentID INTEGER NOT NULL,
    EmployeeID INTEGER NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);
