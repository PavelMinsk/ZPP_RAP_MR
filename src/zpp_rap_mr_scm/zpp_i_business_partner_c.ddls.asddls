@EndUserText.label: 'Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZPP_CL_BP_QUERY_PROVIDER'
define custom entity zpp_i_business_partner_c 
{
  key BusinessPartner         : abap.char( 10 ) ; 
      BusinessPartnerFullName : abap.char( 81 ) ;
      BusinessPartnerGrouping : abap.char( 4 ) ;
}
