using employeedetails as my from '../db/data-model';

service employeeService {
 entity employee as projection on my.employee;
 entity address as projection on my.address;
 entity Salary      as projection on my.Salary;
 entity Department  as projection on my.Department;
 entity Designation as projection on my.Designation;
}
