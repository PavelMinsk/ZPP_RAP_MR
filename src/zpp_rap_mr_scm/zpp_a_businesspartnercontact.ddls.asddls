/********** GENERATED on 06/13/2022 at 09:43:17 by CB9980007940**************/
 @OData.entitySet.name: 'A_BusinessPartnerContact' 
 @OData.entityType.name: 'A_BusinessPartnerContactType' 

/*+[hideWarning] { "IDS" : [ "CARDINALITY_CHECK" ] }*/
 define root abstract entity ZPP_A_BUSINESSPARTNERCONTACT { 
 key RelationshipNumber : abap.char( 12 ) ; 
 key BusinessPartnerCompany : abap.char( 10 ) ; 
 key BusinessPartnerPerson : abap.char( 10 ) ; 
 key ValidityEndDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 @Odata.property.valueControl: 'ValidityStartDate_vc' 
 ValidityStartDate : RAP_CP_ODATA_V2_EDM_DATETIME ; 
 ValidityStartDate_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'IsStandardRelationship_vc' 
 IsStandardRelationship : abap_boolean ; 
 IsStandardRelationship_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'RelationshipCategory_vc' 
 RelationshipCategory : abap.char( 6 ) ; 
 RelationshipCategory_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 @OData.property.name: 'to_ContactAddress' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _ContactAddress : association [0..*] to ZPP_A_BPCONTACTTOADDRESS on 1 = 1; 
 @OData.property.name: 'to_ContactRelationship' 
//A dummy on-condition is required for associations in abstract entities 
//On-condition is not relevant for runtime 
 _ContactRelationship : association [1] to ZPP_A_BPCONTACTTOFUNCANDDEPT on 1 = 1; 
 } 
