/*using my.bookshop as mybooks from '../db/data-model';

service bookshop {
     entity Books as projection on mybooks.Books;
}*/
 

using {com.acc.customtype as m } from '../db/schema';
service ProductService @(path:'/ProductService') {
    
    entity Products as projection on m.ProductEntity;
    entity PharmaProducts as projection on m.PharmProductEntity;
    entity Customers as projection on m.CustomerEntity;

}


/*
using {com.acc.selectincds as  s} from '../db/schema1';
service com_acc_selectincds @(path:'/PartnersService') {
    
    entity Partners as projection on s.BusinessPartnerEntity;
    
entity Partners2  as select from s.BusinessPartnerEntity {
    id,name,country                            

};
entity Partners1 as select from s.BusinessPartnerEntity {*} ;

entity CustomersUSA  as select from s.BusinessPartnerEntity {
                                        id, 
                                        name, 
                                        country
                                    } 
                                    where country  = 'USA'  ;

entity HomelessCustomers  as select from s.BusinessPartnerEntity {*} 
                                    where country  is null;

entity HomelessCustomers1  as select from s.BusinessPartnerEntity {
                                        id, 
                                        name, 
                                        country as homeCountry
                                    } where country  is null  and name is not null;
entity FirstTenCustomers as select from s.BusinessPartnerEntity {*} 
                                      where id between 100 and 300; 

entity CustomersUnknown as select from s.BusinessPartnerEntity {*} where country like '%know%';

entity CustomersNotNull as select from s.BusinessPartnerEntity[country is not null] {*} ; 

entity CustomersNotUSA 
       as select from s.BusinessPartnerEntity[country != 'USA'] {*} ;                                                                         
}

*/

using {acc.com.odataproj as my } from '../db/schema2';
service BusinessPartnerService @(path:'/browse') {
    // example for exclude properties
    entity Suppliers as projection on my.BusinessPartnerEntity 
                            excluding {
                                createdAt, 
                                createdBy, 
                                deliveryCustomerName,
                                deliveryCustomerAddress
                            };

    // example for include and rename properties
    entity Customers as projection on my.BusinessPartnerEntity{
                                id as companyId,
                                deliveryCustomerName as companyName,
                                deliveryCustomerAddress as companyHeadquarters                                 
                            };

}
