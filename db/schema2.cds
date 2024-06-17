namespace acc.com.odataproj;

entity BusinessPartnerEntity{
    key id: Integer;
    createdAt: String;
    createdBy : String; 

    supplierName : String;
    supplierAddress : String;

    deliveryCustomerName : String;
    deliveryCustomerAddress : String;
}