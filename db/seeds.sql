USE employees_db;

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
       ('Dwight','Schrute',2, 1),
       ('Jim','Halpert',3, 2),
       ('Pam','Beesly',4 2),
       ('Andy','Bernard',5 2),
       ('Angela','Martin',6, 3)
       ('Kevin','Malone',7, 4)
       ('Stanley','Hudson',8, 5),
       ('Creed','Bratton',9, 6),
       ('Ryan','Howard',10, 7),
       ('Gabe','Lewis',11, 8);