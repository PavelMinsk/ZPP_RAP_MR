@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Phase Value Help'
@ObjectModel:{
               semanticKey: ['Phase'],
               representativeKey: 'Phaseid',
               resultSet.sizeCategory: #XS,
               dataCategory: #VALUE_HELP
             }
@UI.presentationVariant: [{ 
                            sortOrder: [ { by: 'Phaseid',  direction: #ASC } ] 
                         }]                            
     
define view entity zpp_c_phase_vh
  as select from zpp_i_phase
{
  @ObjectModel.text.element: ['Phase']
  key Phaseid,
      Phase
}
