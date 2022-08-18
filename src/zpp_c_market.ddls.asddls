@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Market Consumption Entity (branch)'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
@Search.searchable: true

define view entity zpp_c_market
  as projection on zpp_i_market
{
  key ProdUuid,
  key MrktUuid,
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_country_vh',
                                                     element: 'Mrktid' },
                                           additionalBinding: [{ element:      'Country',
                                                                 localElement: 'Country' }]
                                        }]
      @ObjectModel.text.element: ['Country']
      Mrktid,
      @Search:{defaultSearchElement: true, fuzzinessThreshold: 0.7}
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_country_vh',
                                                     element: 'Country' }
                                        }]
      _Country.Country  as Country,
      _Country.Imageurl as Imageurl,
      Status,
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  true }
      Startdate,
      @Consumption.filter: { selectionType: #INTERVAL , multipleSelections:  true }
      Enddate,
      @EndUserText.label: 'ISO-Code'
      Isocode,
      CreatedBy,
      CreationTime,
      ChangedBy,
      ChangeTime,
      StatusCriticality,

      /* Associations */
      _Product : redirected to parent            zpp_c_product,
      _Order   : redirected to composition child zpp_c_order
}
