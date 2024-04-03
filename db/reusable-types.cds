
namespace reusabletypes;

type email: String @assert.format: '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
type phonenumber : String @assert.format: '^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$';
type amount: Decimal(10,2);

aspect personaldetails{
    fname:String;
    lname:String;
}