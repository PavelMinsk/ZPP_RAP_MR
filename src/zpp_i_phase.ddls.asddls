@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Phase'

define view entity zpp_i_phase
  as select from zpp_d_phase
{
  key phaseid as Phaseid,
      phase   as Phase
}
