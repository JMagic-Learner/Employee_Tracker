DROP DATABASE IF EXISTS SCPfoundation_db;
CREATE DATABASE SCPfoundation_db;
USE SCPfoundation_db;

DROP TABLE IF EXISTS department;
CREATE TABLE department (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(30) NOT NULL,
    department_location CHAR(30) NOT NULL,
    PRIMARY KEY  (department_id)   
);


DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
    
    role_id INT NOT NULL AUTO_INCREMENT,
    job_title VARCHAR(30) NOT NULL,
    
    salaries DECIMAL NOT NULL,

    PRIMARY KEY (role_id),

    FOREIGN KEY (role_id)
    REFERENCES department(department_id)
);


DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT NOT NULL AUTO_INCREMENT,
    first_name CHAR(20) NOT NULL,
    last_name CHAR(20) NOT NULL,
    role_id INT NOT NULL,
    manager BOOLEAN NOT NULL,
    active_status CHAR(8) NOT NULL,

    PRIMARY KEY (employee_id),

    FOREIGN KEY (role_id)
        REFERENCES roles (role_id)
        ON DELETE CASCADE
   
);
