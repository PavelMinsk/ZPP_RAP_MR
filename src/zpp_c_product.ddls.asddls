@EndUserText.label: 'Product Consumption Entity (root)'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
@Search.searchable: true

define root view entity zpp_c_product
  as projection on zpp_i_product
{
  key ProdUuid,
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_product_vh',
                                                     element: 'Prodid' }
                                        }]
      @Search:{defaultSearchElement: true, fuzzinessThreshold: 0.7}
      Prodid,
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_prod_grp_vh', 
                                                     element: 'Pgid' } 
                                        }]
      @ObjectModel.text.element: ['Pgname']
      @EndUserText.label: 'Product Name'
      Pgid,
      @Search:{defaultSearchElement: true, fuzzinessThreshold: 0.7}
      _ProdGroup.Pgname,
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_phase_vh', 
                                                     element: 'Phaseid' } 
                                        }]
      @ObjectModel.text.element: ['Phase']
      Phaseid,
      @Search:{defaultSearchElement: true, fuzzinessThreshold: 0.7}
      _Phase.Phase,
      @Semantics.quantity.unitOfMeasure: 'SizeUom'
      Height,
      @Semantics.quantity.unitOfMeasure: 'SizeUom'
      Depth,
      @Semantics.quantity.unitOfMeasure: 'SizeUom'
      Width,
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_uom_vh', 
                                                     element: 'Msehi' } 
                                        }]
      @Semantics.unitOfMeasure: true
      @ObjectModel.text.element: ['Isocode']
      SizeUom,
      _UOM.Isocode,
      @Semantics.amount.currencyCode: 'PriceCurrency'
      Price,
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_currency_vh', 
                                                     element: 'Currency' } 
                                        }]
      PriceCurrency,
//      @Semantics.quantity.unitOfMeasure: 'TaxIsocode'
      @Consumption.valueHelpDefinition: [{
                                           entity: { name:    'zpp_c_tax_vh', 
                                                     element: 'TaxRate' }
                                        }]
      Taxrate,
//      @Semantics.unitOfMeasure: true
      @EndUserText.label: 'Tax Units'
      _TAX.TaxIsocode,
      CreatedBy,
      CreationTime,
      ChangedBy,
      ChangeTime,
      LastChangedAt,
      _ProdGroup.Imageurl,
      PhaseCriticality,
      GeneralLineCriticality,
      Measures,
      
      /* Associations */
      _Market : redirected to composition child zpp_c_market
}
