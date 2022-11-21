USE employee_db;

INSERT INTO department (department_name)
VALUES ('CEO'),
       ('President'),
       ('Director'),
       ('Management'),
       ('Intern');

INSERT INTO role (title, salary, department_id)
VALUES ('CEO',250000,1),
       ('President',20000,2),
       ('Director of Sales',150000,3),
       ('Director of Marketing',160000,3),
       ('Director of Finance',170000,3),
       ('Management of Sales',100000,4),
       ('Management of Marketing',110000,3),
       ('Management of Finance',120000,4),
       ('Intern of Sales',40000,5);
       ('Intern of Marketing',41000,5);
       ('Intern of Finance',42000,5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('Michael','Scott',1, NULL),
       ('Dwight','Schrute',2, NULL),
       ('Jim','Halpert',3, NULL),
       ('Pam','Beesly',4 NULL),
       ('Andy','Bernard',5 NULL),
       ('Angela','Martin',6)
       ('Kevin','Malone',7)
       ('Stanley','Hudson',7),
       ('Creed','Bratton',8),
       ('Ryan','Howard',9);