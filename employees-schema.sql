CREATE TABLE department (
	department_id SERIAL PRIMARY KEY,
	department_name varchar(100) NOT NULL
);

CREATE TABLE employee (
	employee_id SERIAL PRIMARY KEY,
	employee_name varchar(100) NOT NULL,
	department_id integer REFERENCES department(department_id) NOT NULL,
	chief_id integer REFERENCES employee(employee_id)
);