USE employees_db;

INSERT INTO department (department_name)
VALUES ('CEO'),
       ('President'),
       ('Director'),
       ('Management'),
       ('Intern');

INSERT INTO employee_role (title, salary, department_id)
VALUES ('CEO', 250000.00,1),
       ('President', 200000.00, 2),
       ('Director of Sales', 150000.00, 3),
       ('Director of Marketing', 160000.00, 3),
       ('Director of Finance', 170000.00, 3),
       ('Management of Sales', 100000.00, 4),
       ('Management of Marketing', 110000.00, 4),
       ('Management of Finance', 120000.00, 4),
       ('Intern of Sales', 40000.00, 5),
       ('Intern of Marketing', 41000.00, 5),
       ('Intern of Finance', 42000.00, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Michael' , 'Scott', 1, NULL),
       ('Dwight' , 'Schrute', 2, 1),
       ('Jim' , 'Halpert', 3, 2),
       ('Pam' , 'Beesly', 4, 2),
       ('Andy' , 'Bernard', 5, 2),
       ('Angela' , 'Martin', 6, 3),
       ('Kevin' , 'Malone', 7, 4),
       ('Stanley' , 'Hudson', 8, 5),
       ('Creed' , 'Bratton', 9, 6),
       ('Ryan' , 'Howard', 10, 7),
       ('Gabe' , 'Lewis', 11, 8);
