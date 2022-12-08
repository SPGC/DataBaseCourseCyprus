create table EMPLOYEE(
    fName varchar,
    lName varchar,
    minit varchar(1),
    address varchar,
    bDate date,
    sex varchar(1),
    salary int,
    ssn int primary key,
    departmentName varchar,
    supervisorSsn int
);

create table DEPARTMENT(
    dNumber int UNIQUE,
    dName varchar primary key
);
create table PROJECT(
    location varchar,
    name varchar,
    number int primary key,
    departmentName varchar
);
create table DEPENDENT(
    sex varchar(1),
    bDate date,
    name varchar,
    relationship varchar,
    employeeSsn int
);

alter table EMPLOYEE add constraint employee_works_for_department_fk foreign key (departmentName) references DEPARTMENT (dname);
alter table EMPLOYEE add constraint employee_supervise_employee_fk foreign key (supervisorSsn) references EMPLOYEE (ssn);
alter table PROJECT add constraint project_controlled_by_department_fk foreign key (departmentName) references DEPARTMENT (dName);
alter table DEPENDENT add constraint dependent_depends_of_employee_fk foreign key (employeeSsn) references EMPLOYEE (ssn);

create table EMPLOYEE_MANAGES_DEPARTMENT(
    dName varchar primary key references DEPARTMENT (dName),
    employee int UNIQUE references EMPLOYEE (ssn),
    startDate date
);

create table EMPLOYEE_WORKS_ON_PROJECT(
    employee int references EMPLOYEE(ssn),
    project int references PROJECT(number),
    hours int,
    primary key (employee, project)
)
