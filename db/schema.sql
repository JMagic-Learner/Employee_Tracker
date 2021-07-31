DROP DATABASE IF EXISTS SCPfoundation_db;
CREATE DATABASE SCPfoundation_db;
USE SCPfoundation_db;

DROP TABLE IF EXISTS department;
CREATE TABLE department (
    department_id INT NOT NULL,
    department_name CHAR(30) NOT NULL,
    department_location CHAR(30) NOT NULL,
    PRIMARY KEY  (department_name)   
);


DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
    job_title CHAR(40) NOT NULL,
    role_id INT NOT NULL,
    role_department CHAR(30) NOT NULL,
    salaries INT NOT NULL,
    PRIMARY KEY (job_title)
);


DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT NOT NULL AUTO_INCREMENT,
    first_name CHAR(20) NOT NULL,
    last_name CHAR(20) NOT NULL,
    job_title CHAR(40) NOT NULL,
    role_id INT NOT NULL,
    department_name CHAR(30) NOT NULL,
    salaries INT NOT NULL,
    manager BOOLEAN NOT NULL,
    active_status CHAR(8) NOT NULL,

    PRIMARY KEY (employee_id),
    
    FOREIGN KEY (department_name)
        REFERENCES department (department_name)
        ON DELETE CASCADE,

    FOREIGN KEY (job_title)
        REFERENCES roles (job_title)
        ON DELETE CASCADE
   
);

