-- create table students(
-- 	name varchar(20),
-- 	familyname varchar(50)
-- );

-- alter table students
-- add numbstud int;

-- alter table students
-- alter column numstud type smallint;

-- alter table students
-- add primary key(numstud);

-- alter table students
-- add column height smallint;

-- alter table students
-- add check (height > 127);

-- create table studygroups (
-- 	numgroup smallint primary key
-- );

-- alter table students
-- add column numgroup smallint;

-- alter table students
-- add foreign key(numgroup) references studygroups(numgroup);

-- alter table studygroups
-- add column groupname varchar(10) unique;

-- alter table students
-- add column groupname varchar(10) references studygroups(groupname);

-- alter table students
-- add column numcource smallint;

-- 1alter table students
-- alter numcource set default 1;

-- insert into studygroups(numgroup, groupname) values (1, '19.Б13-пу');
-- insert into students(name, familyname, numstud, height, numgroup, groupname) values ('Ilya', 'Konovalov', 123, 175, 1, '19.Б13-пу');

-- delete from students;
-- delete from studygroups;

-- alter table students drop numgroup;

-- alter table students drop constraint students_numgroup_fkey;

-- SELECT constraint_name
-- FROM information_schema.constraint_table_usage
-- WHERE table_name = 'students';