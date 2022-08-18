@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Taxes Value Help'
@ObjectModel:{
               semanticKey: ['TaxRate'],
               representativeKey: 'TaxRate',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
define view entity zpp_c_tax_vh
  as select from zpp_d_tax
{
//  @Semantics.quantity.unitOfMeasure: 'TaxIsocode'
  key tax_rate as TaxRate,
  isocode      as TaxIsocode
}
