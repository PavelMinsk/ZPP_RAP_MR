@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Consumption Entity (leaf)'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true

define view entity zpp_c_order
  as projection on zpp_i_order
{
  key ProdUuid,
  key MrktUuid,
  key OrderUuid,
      Orderid,
      @Consumption.valueHelpDefinition: [{ 
                                           entity: { 
                                                     name:    'zpp_c_prod_grp_vh',
                                                     element: 'Pgname' 
                                                   }
                                        }]
      ProductName,
      Quantity,
      CalendarYear,
      DeliveryDate,
      Netamount,
      Grossamount,
      Amountcurr,
      Busspartner,
      Busspartnername,
      Busspartnergroup,
      CreatedBy,
      CreationTime,
      ChangedBy,
      ChangeTime,
      /* Associations */
      _Market  : redirected to parent zpp_c_market,
      _Product : redirected to        zpp_c_product
}
