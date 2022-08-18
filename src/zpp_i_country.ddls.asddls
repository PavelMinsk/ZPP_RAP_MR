@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Country'

define view entity zpp_i_country
  as select from zpp_d_country
{
  key mrktid   as Mrktid,
      country  as Country,
      code     as Code,
      imageurl as Imageurl
}
