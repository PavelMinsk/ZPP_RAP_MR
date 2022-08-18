@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Group'

define view entity zpp_i_prod_grp
  as select from zpp_d_prod_grp
{
  key pgid     as Pgid,
      pgname   as Pgname,
      imageurl as Imageurl
}
