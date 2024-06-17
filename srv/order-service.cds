using my.salesorder as my from '../db/order-data-model';

service SalesOrderService @(path:'/SalesOrderService',requires: 'authenticated-user') 
{
     //restriction
    @(restrict: [
        {
            grant: 'READ',
            to: 'SalesOrderViewer'
        },
        {
            grant:['READ','CREATE','UPDATE','DELETE'],
            to: 'Manager',
            where: 'salesOrg=$user.SalesOrgAttribute'
        }
    ])
    entity SalesOrders     as projection on my.SalesOrders;
    
    entity SalesOrderItems as projection on my.SalesOrderItems;
    entity Customers as projection on my.Customers;
    entity Addresses as projection on my.Addresses; 

    @cds.persistence.exists:true
    entity Dummy {
        key ID : Integer;
            Description : String(50);
    }
}