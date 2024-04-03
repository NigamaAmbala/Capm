namespace employeedetails;

using { cuid } from '@sap/cds/common';
using { reusabletypes as types } from './reusable-types';



entity employee:cuid, types.personaldetails{

     age : Integer;
    dob  : Date;
  email : types.email;
  phonenumber : types.phonenumber;
  adress          : Composition of address;
  salary          : Composition of Salary;
  department      : Association to Department;
  designation     : Association to Designation;


}

entity address : cuid {
  city     : String;
  address  : String;
  pincode  : Integer;
  street   : String;
}

entity Department : cuid {
  name        : String;
  description : String;
  headCount   : Integer;
}

entity Salary : cuid {
  costToCompany : types.amount;
  employeePf    : types.amount;
  employerPf    : types.amount;
  nps           : types.amount;
  vpf           : types.amount;
}
entity Designation : cuid {
  name        : String;
  description : String;
  level       : String;
}