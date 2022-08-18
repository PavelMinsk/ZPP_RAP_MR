@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Value Help'


define view entity zpp_c_product_vh
  as select from zpp_d_product  as Product
     inner join  zpp_d_prod_grp as ProdGroup on Product.pgid = ProdGroup.pgid
{
  key Product.prodid,
  ProdGroup.pgname
}
