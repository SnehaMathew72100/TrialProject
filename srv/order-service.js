//Events - CRUD
//Phase - before, on, after
 
const cds = require('@sap/cds')
module.exports = cds.service.impl(function () {
 
    this.before('READ', 'Dummy', (req) => {
        console.log('in before phase')
    })
 
    this.on('READ', 'Dummy', (req) => {
        console.log('in on phase')
        let data = {
            "ID": 1,
            "Description": "some text"
        }
        return data
    })
 
    this.after('READ', 'Dummy', (data,req) => {
        console.log('in after phase')
        console.log(data)
        data[0].Description = "Data updated in After Phase"
    })
   
})
 