@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Interface Entity (root)'
@Metadata.ignorePropagatedAnnotations: false

define root view entity zpp_i_product
  as select from zpp_d_product

  composition [0..*] of zpp_i_market   as _Market


  association [0..1] to zpp_i_prod_grp as _ProdGroup on $projection.Pgid = _ProdGroup.Pgid
  association [0..1] to zpp_i_phase    as _Phase     on $projection.Phaseid = _Phase.Phaseid
  association [0..1] to zpp_i_uom      as _UOM       on $projection.SizeUom = _UOM.Msehi
  association [0..1] to zpp_i_tax      as _TAX       on $projection.Taxrate = _TAX.TaxRate

{
  key prod_uuid         as ProdUuid,
      prodid            as Prodid,
      pgid              as Pgid,
      phaseid           as Phaseid,
      case phaseid
        when 1 then 1
        when 2 then 2
        when 3 then 3
               else 0
      end               as PhaseCriticality,
      height            as Height,
      depth             as Depth,
      width             as Width,
      size_uom          as SizeUom,
      price             as Price,
      price_currency    as PriceCurrency,
      taxrate           as Taxrate,
      @Semantics.user.createdBy: true
      created_by        as CreatedBy,
      @Semantics.systemDateTime.createdAt: true
      creation_time     as CreationTime,
      @Semantics.user.lastChangedBy: true
      changed_by        as ChangedBy,
      //local ETag field --> OData ETag
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      change_time       as ChangeTime,
      //total ETag field
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at   as LastChangedAt,
      case phaseid
        when 2 then 2
               else 0
      end               as GeneralLineCriticality,
      cast( '   ' as msehi ) as Measures,
      /* Associations */
      _Market,

      _ProdGroup,
      _Phase,
      _UOM,
      _TAX
}
