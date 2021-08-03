const express = require('express');
const mysql = require('mysql2');

const inquirer = require('inquirer');

//const sequelize = require('./config/connection');

let iteration = 0;
const app = express();
const PORT = process.env.PORT || 3001;

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

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

//sequelize.sync({force: false }).then(() => {
//    app.listen(PORT, () => console.log('now Listening'));
// });

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
    "Active Status ACTIVE/KIA/MIA/REDACTED"
]

const updatingRoles = [
    "Enter job_title",
    "Enter role_id",
    "Enter role_department",
    "Enter salaries"
];



let updateDepartmentAnswers = [];
let updateEmployeeAnswers = [];
let updateRoleAnswers = [];

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
                    { name: 'Add a new agent', value: 4 },
                    { name: 'Add a new role', value: 5},
                    { name: 'RESET DATABASE', value: 6},
                    { name: 'Search manager of employee by department', value: 7}
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
            } else if (response.license === 4) {
                console.log("Inducting new agent");
                updateEmployee().then(writeUpdateEmployee);
            } else if (response.license === 5) {
                console.log("Delegating new role");
                updateRoles().then(writeUpdateRoles);
            } else if (response.license === 6 ) {
                console.log("PURGING RECORDS");
                purge();
                reset();
            } else if (response.license === 7) {
                console.log("Searching for commanders");
                showMANAGER();
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
   
    displayDepartments();
    repeat()
    
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

function writeUpdateEmployee(updateEmployeeAnswers) {
    let first_name = updateEmployeeAnswers[0];
    let last_name = updateEmployeeAnswers[1];
    let job_title = updateEmployeeAnswers[2];
    let role_id = updateEmployeeAnswers[3];
    let department_name = updateEmployeeAnswers[4];
    let salaries = updateEmployeeAnswers[5];
    let manager = updateEmployeeAnswers[6];
    let active_status = updateEmployeeAnswers[7];

    console.log(first_name + last_name + job_title +role_id + salaries+  manager + active_status);
 
    db.query(`INSERT INTO employees (first_name, last_name, job_title, role_id, department_name, salaries, manager, active_status) 
              VALUES ( "${first_name}", "${last_name}", "${job_title}" , ${role_id} ,"${department_name}", ${salaries}, ${manager}, "${active_status}") `, function (err, results) {
                
    });
    
    displayEmployees();
    repeat();
}

async function updateRoles(response) {
    const updateSelection = await inquirer.prompt([
        {

            type: 'input',
            message: updatingRoles[0],
            name: 'job_title',
        },
        {
            type: 'input',
            message: updatingRoles[1],
            name: 'role_id',
        },
        {
            type: 'input',
            message: updatingRoles[2],
            name: 'role_department',
        },
        {
            type: 'input',
            message: updatingRoles[3],
            name: 'salary',
        },


    ])

    updateRoleAnswers.push(updateSelection.job_title);
    updateRoleAnswers.push(updateSelection.role_id);
    updateRoleAnswers.push(updateSelection.role_department);
    updateRoleAnswers.push(updateSelection.salary);
    console.log(updateRoleAnswers);

    return updateRoleAnswers;
}

function writeUpdateRoles(updateRoleAnswers) {
    let job_title = updateRoleAnswers[0];
    let role_id = updateRoleAnswers[1];
    let role_department = updateRoleAnswers[2];
    let salaries = updateRoleAnswers[3];
    console.log(this.job_title);
    console.log(this.role_id);
    console.log(this.role_name);
    console.log(this.salaries);
    db.query(`INSERT INTO roles (job_title, role_id, role_department, salaries) 
              VALUES ( "${job_title}", ${role_id}, "${role_department}", ${salaries}) `, function (err, results) {
   
    });
  
    displayRoles();
    repeat();
  
}

function purge() {
    console.log("Showing all adjacent databases");
    db.query('SOURCE schema.sql', function (err, results) {
        console.log("Resetting");
    });   
}

async function showMANAGER() {
    const updateSelection = await inquirer.prompt([
        {

            type: 'input',
            message: 'Enter employee department',
            name: 'department_selection',
        }
    ])
    db.query(`SELECT * FROM employees where department_name = "${updateSelection.department_selection}"`, function(err, results) {
        console.table(results)

    });
   
    
}

function reset() {
    console.log("Reseeding");
    db.query('SOURCE seed.sql;', function (err, results) {
        console.log(results);
    });
}

function displayDepartments() {
    console.log("Showing SCP directory");
    db.query('SELECT * FROM department', function (err, results) {
        console.table(results);
        repeat();
    });
}

function displayEmployees() {
    console.log("Displaying SCP personnel.");
    db.query('SELECT * FROM employees', function (err, results) {
        console.table(results);
        repeat()
    });
}

function displayRoles() {
    console.log("Displaying SCP role delegation.");
    db.query('SELECT * FROM roles', function (err, results) {
        console.table(results);
        repeat()
    });
}

directory();

function stop() {
    return;
}

async function repeat() {
    const updateSelection = await inquirer.prompt([
        {
            type: 'confirm',
            message: 'Return to directory?',
            name: 'yesno',
        }
    ])

    if (updateSelection.yesno = 1) {
        directory();
    } 

    stop();
    return;
}
