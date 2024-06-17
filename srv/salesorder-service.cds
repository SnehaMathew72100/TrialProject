using my.salesorders as my from '../db/sales-order';

service CatalogService {
   

    //Direct Entities
    entity SalesOrders     as projection on my.SalesOrders;
    entity SalesOrderItems as projection on my.SalesOrderItems;
}