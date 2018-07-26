
--====================================== Table Creation =============================================
-- creates the emplyee table constraints of feilds are here as well foreign key
-- constraints are below for dev purposes
create table employee (
    employeeID number(10) primary key,
    firstName varchar2(200) not null,
    lastName varchar2(200) not null,
    email varchar2(200) unique not null check (
        regexp_like(email, '[[:alnum:]]+@[[:alnum:]]+\.[[:alnum:]]')
    ),
    password varchar2(200) not null,
    managerID number(10),
    addressID number(10)
);

create table addresses (
    addressID number(10) primary key,
    country varchar2(200) not null,
    state varchar2(10),
    zipcode number(10) not null,
    street varchar2 (200) not null,
    apartmentNumebr number(10),
);


--================================ Foreign Key Constraints =============================================
-- Manager ID's should reference their emplyee data
alter table employee add constraint employee_FK_managerID foreign key (managerID) references employee (employeeID);
-- Address ID's should reference the address entry
alter table employee add constraint employee_FK_addressID foreign key (addressID) references addresses (addressID);