@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Market Interface Entity (branch)'
@Metadata.ignorePropagatedAnnotations: false

define view entity zpp_i_market
  as select from zpp_d_market
    
    association to parent zpp_i_product as _Product
                          on $projection.ProdUuid = _Product.ProdUuid
    composition [0..*] of zpp_i_order as _Order
    
    
    association [1..1] to zpip_i_country  as _Country 
                          on $projection.Mrktid = _Country.Mrktid
                                        
{
  key prod_uuid     as ProdUuid,
  key mrkt_uuid     as MrktUuid,
      mrktid        as Mrktid,
      status        as Status,
      startdate     as Startdate,
      enddate       as Enddate,
      isocode       as Isocode,
      @Semantics.user.createdBy: true
      created_by    as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      creation_time as CreationTime,
      @Semantics.user.lastChangedBy: true
      changed_by    as ChangedBy,
      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      change_time   as ChangeTime,
      case status
        when ''  then 1
        when 'X' then 3
                 else 0
      end                          as StatusCriticality,
      
      /* Associations */
      _Product,
      _Order,
      
      _Country
}
