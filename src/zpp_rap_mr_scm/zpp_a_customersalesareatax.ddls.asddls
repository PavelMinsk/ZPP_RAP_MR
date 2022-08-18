/********** GENERATED on 06/13/2022 at 09:42:17 by CB9980007940**************/
 @OData.entitySet.name: 'A_CustomerSalesAreaTax' 
 @OData.entityType.name: 'A_CustomerSalesAreaTaxType' 
 define root abstract entity ZPP_A_CUSTOMERSALESAREATAX { 
 key Customer : abap.char( 10 ) ; 
 key SalesOrganization : abap.char( 4 ) ; 
 key DistributionChannel : abap.char( 2 ) ; 
 key Division : abap.char( 2 ) ; 
 key DepartureCountry : abap.char( 3 ) ; 
 key CustomerTaxCategory : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'CustomerTaxClassification_vc' 
 CustomerTaxClassification : abap.char( 1 ) ; 
 CustomerTaxClassification_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
