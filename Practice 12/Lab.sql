

alter table department add constraint uq_dname unique (dname);
alter table project add constraint uq_pname unique (name);
alter table employee add constraint salary_check  check ( salary >= 1000 and salary <= 5000)

alter table employee_manages_department add constraint df_start_mahage_time default

alter table project add constraint check_location check ( location in ('Nicosia', 'Larnacka', 'Lemesos', 'Paphos') )

alter table employee add constraint not_null_name check (not (fname = '') AND NOT (lname = ''))
alter table department add constraint not_null_DNAME check (not (dname = ''))
