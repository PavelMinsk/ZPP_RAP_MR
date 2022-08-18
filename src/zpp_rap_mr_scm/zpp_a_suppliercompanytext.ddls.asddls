/********** GENERATED on 06/13/2022 at 09:42:24 by CB9980007940**************/
 @OData.entitySet.name: 'A_SupplierCompanyText' 
 @OData.entityType.name: 'A_SupplierCompanyTextType' 
 define root abstract entity ZPP_A_SUPPLIERCOMPANYTEXT { 
 key Supplier : abap.char( 10 ) ; 
 key CompanyCode : abap.char( 4 ) ; 
 key Language : abap.char( 2 ) ; 
 key LongTextID : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'LongText_vc' 
 LongText : abap.string( 0 ) ; 
 LongText_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
