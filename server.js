const express = require('express');
const mysql = require('mysql2');

const inquirer = require('inquirer');
const { response } = require('express');
const fs = require('fs');

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));

let answer;

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'Vertex213!',
        database: 'scpfoundation_db'
    },
    console.log("Connected to the SCP Mainframe")
);

app.listen(PORT, () => {
    console.log(`Server is listening to SCP Mainframe via PORT ${PORT}`);
});

const questions = [
    "Select an option to view the corresponding category",
    "Enter which table you wish to update"
]

const updatingDepartment = [
    "Enter the department_id",
    "Enter department_name (PRIMARYKEY)",
    'Enter department_location'
]

const updatingEmployee = [
    "Enter agent's first name (characters only)",
    "Enter agent's last name (characters only)",
    "Enter agent's job title (characters only)",
    "Enter agent's role id (characters only)",
    "Enter agent's department name",
    "Enter salary",
    "Enter manager (1 | 0, 1 for true, 0 for false)",
    "Active Status ACTIVE/KIA/MIA/REDACTED",
]

let updateDepartmentAnswers = [];
let updateEmployeeAnswers = [];

function directory() {
    inquirer
        .prompt([
            {
                type: 'list',
                message: questions[0],
                name: 'license',
                choices: [
                    { name: 'View all departments', value: 0 },
                    { name: 'View all employees', value: 1 },
                    { name: 'View all roles', value: 2 },
                    { name: 'Add to department', value: 3 },
                    { name: 'Add a new agent', value: 4 }
                ]
            }
        ])


        .then((response) => {

            answer = JSON.stringify(response.license);
            console.log(answer)

            if (response.license === 0) {
                console.log("You have chosen to view all departments.");
                displayDepartments();
            } else if (response.license === 1) {
                console.log("You have chosen to view all employeess");
                displayEmployees();
            } else if (response.license === 2) {
                console.log("You have chosen to view all roles");
                displayRoles();
            } else if (response.license === 3) {
                console.log("You have chosen to add a department");
                updateDepartment().then(writeUpdateDepartment);
                //      
            } else if (response.license === 4) {
                console.log("Inducting new agent");
                updateEmployee();
            }

        });

}

async function updateDepartment(response) {
    const updateSelection = await inquirer.prompt([
        {

            type: 'input',
            message: updatingDepartment[0],
            name: 'departmentID',
        },
        {
            type: 'input',
            message: updatingDepartment[1],
            name: 'departmentName',
        },
        {
            type: 'input',
            message: updatingDepartment[2],
            name: 'departmentLocation',
        }
    ])

    updateDepartmentAnswers.push(updateSelection.departmentID);
    updateDepartmentAnswers.push(updateSelection.departmentName);
    updateDepartmentAnswers.push(updateSelection.departmentLocation);
    console.log(updateDepartmentAnswers);

    return updateDepartmentAnswers;
}

function writeUpdateDepartment(updateDepartmentAnswers) {
    let department_id = updateDepartmentAnswers[0];
    let department_name = updateDepartmentAnswers[1];
    let department_location = updateDepartmentAnswers[2];
    console.log(department_location);
    console.log(department_id);
    console.log(department_name);
    db.query(`INSERT INTO department (department_id, department_name, department_location) 
              VALUES ( ${department_id}, "${department_name}", "${department_location}") `, function (err, results) {

    });
}

async function updateEmployee(response) {
    const updateSelection = await inquirer.prompt([
        {

            type: 'input',
            message: updatingEmployee[0],
            name: 'first_name',
        },
        {
            type: 'input',
            message: updatingEmployee[1],
            name: 'last_name',
        },
        {
            type: 'list',
            message: updatingEmployee[2],
            name: 'job_title',
            choices: [
                'CEO',
                'Director',
                'Containment Specialist',
                'Researcher',
                'Trainer',
                'F.E.A.R',
                'Investigator',
                'PR Specialist',
                'Engineer',
                'Netrunner',
                'Interrogator',
                'Processor',
                'Secretary',
                'Liason',
                'Janitor',
                'Intern',
                'HR-Specialist',
                'Retriever',
                'Archaeologist',
            ]
        },
        {
            type: 'list',
            message: updatingEmployee[3],
            name: 'role_id',
            choices: [
                { name: "CEO", value: 1 },
                { name: "Director", value: 2 },
                { name: "Combat", value: 3 },
                { name: "Scientist", value: 4 },
                { name: "Support", value: 5 }
            ]
        },
        {
            type: 'list',
            message: updatingEmployee[4],
            name: 'department_name',
            choices: [
                'CONTAINNMENT SECTOR 1',
                'CONTAINENT SECTOR 2',
                'CONTAIMENT SECTOR 3',
                'CONTAINMENT SECTOR 4',
                'CONTAIMENT SECTOR 5',
                'RESEARCH AND DEVELOPMENT',
                'TRAINING - ADMINISTRATIVE',
                'TRAINING - COMBAT',
                'F.E.A.R SQUADS',
                'RECOVERY/ERASURE',
                'PUBLIC RELATIONS',
                'ENGINEERING',
                'INFO-WAR',
                'PSY-OP',
                'ADMINISTRATION',
                'HUMAN RESOURCES - NA',
                'HUMAN RESOURCES - EU',
                'HUMAN RESOURCES - ASIA',
                'OCCULT REQUISITIONS',
                'ARCHAEOLOGY'
            ]

        },
        {
            type: 'input',
            message: updatingEmployee[5],
            name: 'salaries',
        },
        {
            type: 'confirm',
            message: updatingEmployee[6],
            name: 'manager',
        },
        {
            type: 'list',
            message: updatingEmployee[7],
            name: 'active_status',
            choices: [
                'ACTIVE',
                'KIA',
                'MIA',
                'REDACTED'
            ] 
        }
    ])

    updateEmployeeAnswers.push(updateSelection.first_name);
    updateEmployeeAnswers.push(updateSelection.last_name);
    updateEmployeeAnswers.push(updateSelection.job_title);
    updateEmployeeAnswers.push(updateSelection.role_id);
    updateEmployeeAnswers.push(updateSelection.department_name);
    updateEmployeeAnswers.push(updateSelection.salaries);
    updateEmployeeAnswers.push(updateSelection.manager);
    updateEmployeeAnswers.push(updateSelection.active_status);
    console.log(updateEmployeeAnswers);

    return updateEmployeeAnswers;
}

function databaseVIEW() {
    console.log("Showing all adjacent databases");
    db.query('SHOW DATABASES', function (err, results) {
        console.log(results);
    });
}

function showTables() {
    console.log("Showing SCP directory");
    db.query('SHOW TABLES', function (err, results) {
        console.log(results);
    });
}

function displayDepartments() {
    console.log("Showing SCP directory");
    db.query('SELECT * FROM department', function (err, results) {
        console.table(results);
    });
}

function displayEmployees() {
    console.log("Displaying SCP personnel.");
    db.query('SELECT * FROM employees', function (err, results) {
        console.table(results);
    });
}

function displayRoles() {
    console.log("Displaying SCP role delegation.");
    db.query('SELECT * FROM roles', function (err, results) {
        console.table(results);
    });
}

directory();

