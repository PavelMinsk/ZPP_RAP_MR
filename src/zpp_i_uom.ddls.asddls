@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Units of Measure'

define view entity zpp_i_uom
  as select from zpp_d_uom
{
  key msehi   as Msehi,
      dimid   as Dimid,
      isocode as Isocode
}
