/********** GENERATED on 06/13/2022 at 09:42:02 by CB9980007940**************/
 @OData.entitySet.name: 'A_AddressFaxNumber' 
 @OData.entityType.name: 'A_AddressFaxNumberType' 
 define root abstract entity ZPP_A_ADDRESSFAXNUMBER { 
 key AddressID : abap.char( 10 ) ; 
 key Person : abap.char( 10 ) ; 
 key OrdinalNumber : abap.numc( 3 ) ; 
 @Odata.property.valueControl: 'IsDefaultFaxNumber_vc' 
 IsDefaultFaxNumber : abap_boolean ; 
 IsDefaultFaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FaxCountry_vc' 
 FaxCountry : abap.char( 3 ) ; 
 FaxCountry_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FaxNumber_vc' 
 FaxNumber : abap.char( 30 ) ; 
 FaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'FaxNumberExtension_vc' 
 FaxNumberExtension : abap.char( 10 ) ; 
 FaxNumberExtension_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'InternationalFaxNumber_vc' 
 InternationalFaxNumber : abap.char( 30 ) ; 
 InternationalFaxNumber_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 @Odata.property.valueControl: 'AddressCommunicationRemarkT_vc' 
 AddressCommunicationRemarkText : abap.char( 50 ) ; 
 AddressCommunicationRemarkT_vc : RAP_CP_ODATA_VALUE_CONTROL ; 
 
 } 
