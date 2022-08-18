/********** GENERATED on 06/13/2022 at 09:42:04 by CB9980007940**************/
 @OData.entitySet.name: 'A_BPContactToFuncAndDept' 
 @OData.entityType.name: 'A_BPContactToFuncAndDeptType' 
 define root abstract entity ZPP_A_BPCONTACTTOFUNCANDDEPT { 
 key RelationshipNumber : abap.char( 12 ) ; 
 key BusinessPartnerCompany : abap.char( 10 ) ; 
 key BusinessPartnerPerson : abap.char( 10 ) ; 
 key ValidityEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 @Odata.property.valueControl: 'ContactPersonFunction_vc' 
 ContactPersonFunction : abap.char( 4 ) ; 
 ContactPersonFunction_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'ContactPersonDepartment_vc' 
 ContactPersonDepartment : abap.char( 4 ) ; 
 ContactPersonDepartment_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PhoneNumber_vc' 
 PhoneNumber : abap.char( 30 ) ; 
 PhoneNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'PhoneNumberExtension_vc' 
 PhoneNumberExtension : abap.char( 10 ) ; 
 PhoneNumberExtension_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FaxNumber_vc' 
 FaxNumber : abap.char( 30 ) ; 
 FaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FaxNumberExtension_vc' 
 FaxNumberExtension : abap.char( 10 ) ; 
 FaxNumberExtension_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'EmailAddress_vc' 
 EmailAddress : abap.char( 241 ) ; 
 EmailAddress_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RelationshipCategory_vc' 
 RelationshipCategory : abap.char( 6 ) ; 
 RelationshipCategory_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
