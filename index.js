const mysql = require('mysql2');
const inquirer = require("inquirer")
const console_table = require("console.table");
const Office = require("./db/index.js");
const connection = require("./db/connections");

let theOffice

async function init() {
    let newConnection = await connection
    theOffice = new Office(newConnection)
    loadQ()
}

async function loadQ() {
    inquirer
        .prompt([
            {
                type: 'list',
                name: 'action',
                message: 'What would you like to do?',
                choices: ["View All Employees", "Add Employee", "Update Employee Role",
                    "View All Roles", "Add Role", "View All Departments", "Add Department", "Quit"],
            },
        ]).then(async (data) => {
            switch (data.action) {
                case "View All Employees":
                    await theOffice.viewEmploy()
                    loadQ()
                    break
                case "Add Employee":
                    addEmployee()
                    break
                case "Update Employee Role":
                    updateEmpRole()
                    break
                case "View All Roles":
                   await theOffice.viewRoles()
                    loadQ()
                    break
                case "Add Role":
                    addRole()
                    break
                case "View All Departments":
                   await theOffice.viewDept()
                    loadQ()
                    break
                case "Add Department":
                    addDepartment()
                    break
                case "Quit":
                    let myConnection = await connection
                    myConnection.end()
            }
        })
}

async function addEmployee() {
    const roletChoice = await theOffice.getRoles()
    const employChoice = await theOffice.getEmployees()
    inquirer
        .prompt([
            {
                type: "input",
                name: "firstname",
                message: "What is the first name?"
            },
            {
                type: "input",
                name: "lastname",
                message: "What is the last name?"
            },
            {
                type: "list",
                name: "roleid",
                message: "What is the employees role?", //list
                choices: roleChoice
            },
            {
                type: "list",
                name: "managerid",
                message: "Who is their manager?",
                choices: employChoice
            },
        ]).then(async (data) => {
            await theOffice.addEmplpy(data.firstname, data.lastname, data.roleid, data.managerid)
            console.log("new employee created ")
            loadQ()
        })
}

async function updateEmpRole() {
    const roleChoice = await theOffice.getRoles()
    const employChoice = await theOffice.getEmployees()
    inquirer
        .prompt([
            {
                type: "list",
                name: "whichEmployee",
                message: "Which eployees role do you want to update?",
                choices: employChoice
            },
            {
                type: "list",
                name: "updateRole",
                message: "What is the employees new role?",
                choices: roleChoice
            },
        ]).then(async (data) => {
           await theOffice.updateRole(data.whichEmployee, data.updateRole)
            console.log("role updated")
            loadQ()
        })
}

async function addRole() {
    const departmentChoice = await theOffice.getDepartments()
    inquirer
        .prompt([
            {
                type: "input",
                name: "title",
                message: "What is the  name of the role?"
            },
            {
                type: "input",
                name: "salary",
                message: "What is the salary for the role?"
            },
            {
                type: "list",
                name: "department_id",
                message: "What is the department for the role?",
                choices: departmentChoice
            },
        ]).then(async (data) => {
           await theOffice.addRole(data.title, data.salary, data.department_id)
            console.log("new role created ")
            loadQ()
        })
}

async function addDepartment() {
    inquirer
        .prompt([
            {
                type: "input",
                name: "department_name",
                message: "What is the  name of the department?"
            },
        ]).then(async (data) => {
            await theOffice.addDept(data.department_name)
            console.log("new dept created ")
            loadQ()
        })
}

init()