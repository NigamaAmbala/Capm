const cds = require("@sap/cds");
const { onBeforeEmployeeCreate, onAfterEmployeeCreate } = require("./src/controller/employee-operations");

// module.exports = cds.service.impl(async (srv) => {
    
//     srv.before("CREATE", "employee", async(req) => {
//         console.log("Before event is triggred");
//     })

//     srv.after("CREATE", "employee", async(req) => {
//         console.log("after event is triggred");
//     })

// });


module.exports = cds.service.impl(async (srv) => {
    srv.before("CREATE", "employee", onBeforeEmployeeCreate)
    srv.after("CREATE", "employee", onAfterEmployeeCreate)
});