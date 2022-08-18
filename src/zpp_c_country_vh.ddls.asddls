@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Country Value Help'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.resultSet.sizeCategory: #XS

define view entity zpp_c_country_vh
  as select from zpp_i_country
{
      @ObjectModel.text.element: ['Country']
  key Mrktid, 
      Country
}
