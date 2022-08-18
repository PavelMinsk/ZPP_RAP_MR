@EndUserText.label: 'Custom Entity for Suppliers'
@Search.searchable: true
@ObjectModel.query.implementedBy: 'ABAP:ZPP_CL_SUPPLIERS'

@UI: {
       headerInfo: {
                     typeNamePlural: 'Suppliers',
                     typeName:       'Supplier',

                     title:        { label: 'Supplier',
                                     type:   #STANDARD,
                                     value: 'CompanyName' },

                     description:  { value: 'SupplierID',
                                     type:  #STANDARD }
                   },
       presentationVariant: [{
                               sortOrder: [{ by: 'SupplierID',  direction: #ASC }]
                            }]
     }


define root custom entity zpp_suppliers_c

{
      @UI.facet: [
      ---------------------------------------------------------------------
      //                       Header Facet Annotations
       {
         id             : 'HeaderCity',
         purpose        :  #HEADER,
         type           :  #DATAPOINT_REFERENCE,
         targetQualifier: 'City',
         position       :  10
       },
       {
         id             : 'HeaderCountry',
         purpose        : #HEADER,
         type           : #DATAPOINT_REFERENCE,
         targetQualifier: 'Country',
         position       : 20
       },
       {
         id             : 'HeaderContact',
         purpose        : #HEADER,
         type           : #DATAPOINT_REFERENCE,
         targetQualifier: 'Contact',
         position       : 30
       },
      ---------------------------------------------------------------------
      //                       Object Page Tabs
       {
         id       : 'DetailedInformation',
         type     : #COLLECTION,
         label    : 'Detailed information',
         position : 10
       },
       {
         id       : 'TechnicalInformation',
         type     : #COLLECTION,
         label    : 'Technical Information',
         position : 20
       },
      --------------------------------------------------------------------
      //                       Field Groups
       {
         id             : 'SupplierGeneralInformation',
         purpose        :  #STANDARD ,
         parentId       : 'DetailedInformation',
         type           :  #FIELDGROUP_REFERENCE,
         label          : 'Supplier General Information',
         position       : 10,
         targetQualifier: 'SupplierGeneralInformation'
       },
       {
         id             : 'Contacts',
         purpose        : #STANDARD ,
         parentId       : 'DetailedInformation',
         type           : #FIELDGROUP_REFERENCE,
         label          : 'Contacts',
         position       : 20,
         targetQualifier: 'Contacts'
       },
       {
         id             : 'Discount',
         purpose        : #STANDARD ,
         parentId       : 'DetailedInformation',
         type           : #FIELDGROUP_REFERENCE,
         label          : 'Discount',
         position       : 30,
         targetQualifier: 'Discount'
       },
      ------
       {
          id             : 'Changes',
          purpose        :  #STANDARD ,
          parentId       : 'TechnicalInformation',
          type           : #FIELDGROUP_REFERENCE,
          label          : 'Changes',
          position       : 30,
          targetQualifier: 'Changes'
       }
      --------------------------------------------------------------------
      ]


      @Search           : {defaultSearchElement: true}
      @EndUserText.label: 'SupplierID'
      @UI: {
             fieldGroup : [{ position: 10, qualifier: 'SupplierGeneralInformation'}],
             lineItem   : [{ position: 10, importance: #HIGH }]
           }
  key SupplierID      : abap.int4;

      @Search           : {defaultSearchElement: true, fuzzinessThreshold: 0.7}
      @EndUserText.label: 'CompanyName'
      @UI: {
             fieldGroup : [{ position: 20, qualifier: 'SupplierGeneralInformation'}],
             lineItem   : [{ position: 20, importance: #HIGH }]
           }
      CompanyName     : abap.char( 40 );

      @Search           : {defaultSearchElement: true, fuzzinessThreshold: 0.7}
      @EndUserText.label: 'Contact Name'
      @UI: {
             fieldGroup : [{ position: 10, qualifier: 'Contacts'}],
             dataPoint  : { title:'Contact', qualifier: 'Contact'}
//             lineItem   : [{ position: 30, importance: #HIGH }]
           }
      ContactName     : abap.char( 30 );
      @UI: { hidden: true }
      ContactName_vc  : rap_cp_odata_value_control;

      @Search           : {defaultSearchElement: true, fuzzinessThreshold: 0.7}
      @EndUserText.label: 'Contact Title'
      @UI: {
             fieldGroup : [{ position: 10, qualifier: 'Contacts'}]
//             lineItem   : [{ position: 40, importance: #HIGH }]
           }
      ContactTitle    : abap.char( 30 );
      @UI: { hidden: true }
      ContactTitle_vc : rap_cp_odata_value_control;

      @EndUserText.label: 'Address'
      @UI: {
             fieldGroup : [{ position: 60, qualifier: 'SupplierGeneralInformation'}]
//             lineItem   : [{ position: 50, importance: #HIGH }]
           }
      Address         : abap.char( 60 );
      @UI: { hidden: true }
      Address_vc      : rap_cp_odata_value_control;

      @EndUserText.label: 'City'
      @UI: {
             fieldGroup : [{ position: 40, qualifier: 'SupplierGeneralInformation'}],
             dataPoint  : { title:'City', qualifier: 'City'},
             lineItem   : [{position: 60, importance: #HIGH }]
           }
      City            : abap.char( 15 );
      @UI: { hidden: true }
      City_vc         : rap_cp_odata_value_control;

      @EndUserText.label: 'Region'
      @UI: {
             fieldGroup : [{ position: 30, qualifier: 'SupplierGeneralInformation'}],
             lineItem   : [{ position: 70, importance: #HIGH }]
           }
      Region          : abap.char( 15 );
      @UI: { hidden: true }
      Region_vc       : rap_cp_odata_value_control;

      @EndUserText.label: 'Postal Code'
      @UI: {
             fieldGroup : [{ position: 50, qualifier: 'SupplierGeneralInformation'}]
//             lineItem   : [{ position: 80, importance: #HIGH }]
           }
      PostalCode      : abap.char( 10 );
      @UI: { hidden: true }
      PostalCode_vc   : rap_cp_odata_value_control;

      @EndUserText.label: 'Country'
      @UI : {
              dataPoint : { title:'Country', qualifier: 'Country'},
              lineItem  : [{ position: 90, importance: #HIGH }]
            }
      Country         : abap.char( 15 );
      @UI: { hidden: true }
      Country_vc      : rap_cp_odata_value_control;

      @EndUserText.label: 'Phone Number'
      @UI: {
             fieldGroup: [{ position: 20, qualifier: 'Contacts'}]
//             lineItem  : [{ position: 100, importance: #HIGH }]
           }
      Phone           : abap.char( 24 );
      @UI: { hidden: true }
      Phone_vc        : rap_cp_odata_value_control;

      @EndUserText.label: 'Fax Number'
      @UI: {
             fieldGroup : [{ position: 30, qualifier: 'Contacts'}]
//             lineItem   : [{ position: 110, importance: #HIGH }]
           }
      Fax             : abap.char( 24 );
      @UI: { hidden: true }
      Fax_vc          : rap_cp_odata_value_control;

      @EndUserText.label: 'Home Page'
      @UI: {
             fieldGroup : [{ position: 40, qualifier: 'Contacts'}]
//             lineItem   : [{ position: 120, importance: #HIGH }]
           }
      HomePage        : abap.string( 0 );
      @UI: { hidden: true }
      HomePage_vc     : rap_cp_odata_value_control;

      @EndUserText.label: 'Discount %'
      @UI: {
             fieldGroup : [{ position: 10, qualifier: 'Discount'}],
             lineItem   : [{ position: 130, importance: #HIGH }]
           }
      discount_pct    : abap.dec(3,1);

      @UI: {
             fieldGroup: [{ position: 10, qualifier: 'Changes'}],
             hidden    : true
           }
      lastchangedat   : timestampl;
}
