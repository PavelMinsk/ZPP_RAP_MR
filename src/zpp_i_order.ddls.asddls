@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Interface Entity (leaf)'
@Metadata.ignorePropagatedAnnotations: false

define view entity zpp_i_order
  as select from zpp_d_order

  association        to parent zpp_i_market       as _Market          on  $projection.ProdUuid = _Market.ProdUuid
                                                                      and $projection.MrktUuid = _Market.MrktUuid
  association [1..1] to zpp_i_product             as _Product         on  $projection.ProdUuid = _Product.ProdUuid


  association [0..1] to zpip_i_business_partner_c as _BusinessPartner on  $projection.Busspartner = _BusinessPartner.BusinessPartner

{
  key prod_uuid                  as ProdUuid,
  key mrkt_uuid                  as MrktUuid,
  key order_uuid                 as OrderUuid,
      orderid                    as Orderid,
      _Product._ProdGroup.Pgname as ProductName,
      quantity                   as Quantity,
      calendar_year              as CalendarYear,
      delivery_date              as DeliveryDate,
      netamount                  as Netamount,
      grossamount                as Grossamount,
      amountcurr                 as Amountcurr,
      busspartner                as Busspartner,
      busspartnername            as Busspartnername,
      busspartnergroup           as Busspartnergroup,
      @Semantics.user.createdBy: true
      created_by                 as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      creation_time              as CreationTime,
      @Semantics.user.lastChangedBy: true
      changed_by                 as ChangedBy,
      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      change_time                as ChangeTime,
      /* Associations */
      _Market,
      _Product,

      _BusinessPartner
}
