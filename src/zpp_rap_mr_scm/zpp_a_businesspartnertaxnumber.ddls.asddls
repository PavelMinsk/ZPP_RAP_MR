/********** GENERATED on 06/13/2022 at 09:42:11 by CB9980007940**************/
 @OData.entitySet.name: 'A_BusinessPartnerTaxNumber' 
 @OData.entityType.name: 'A_BusinessPartnerTaxNumberType' 
 define root abstract entity ZPP_A_BUSINESSPARTNERTAXNUMBER { 
 key BusinessPartner : abap.char( 10 ) ; 
 key BPTaxType : abap.char( 4 ) ; 
 @Odata.property.valueControl: 'BPTaxNumber_vc' 
 BPTaxNumber : abap.char( 20 ) ; 
 BPTaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'BPTaxLongNumber_vc' 
 BPTaxLongNumber : abap.char( 60 ) ; 
 BPTaxLongNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AuthorizationGroup_vc' 
 AuthorizationGroup : abap.char( 4 ) ; 
 AuthorizationGroup_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
