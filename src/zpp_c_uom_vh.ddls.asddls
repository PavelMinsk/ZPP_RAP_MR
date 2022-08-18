@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Units fo Measure Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel:{
               semanticKey: ['Isocode'],
               representativeKey: 'Msehi',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
define view entity zpp_c_uom_vh
  as select from zpp_i_uom
{
  @ObjectModel.text.element: ['Isocode']
  key Msehi,
      Isocode
}
