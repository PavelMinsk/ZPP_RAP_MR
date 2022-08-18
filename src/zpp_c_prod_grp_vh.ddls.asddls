@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Group Value Help'
@ObjectModel.resultSet.sizeCategory: #XS

define view entity zpp_c_prod_grp_vh
  as select from zpp_i_prod_grp
{
  @ObjectModel.text.element: ['Pgname']
  key Pgid,
      Pgname
}
