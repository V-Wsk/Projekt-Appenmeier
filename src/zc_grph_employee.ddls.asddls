@EndUserText.label: 'Mitarbeiter Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_GRPH_EMPLOYEE
  provider contract transactional_query
  as projection on ZR_GRPH_Employee
{
  key Id,
      EmployeeNumber,
      @Consumption.valueHelpDefinition: [{ entity : {name :'ZI_GRPH_APPROVERVH', element: 'Forename'}} ]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Forename,
      @Consumption.valueHelpDefinition: [{ entity : {name :'ZI_GRPH_APPROVERVH', element: 'Surename'}} ]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Surename,
      EntryDate,
      
      /*Administrativ Data*/
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      
      
      /*Associations*/
      _Claims : redirected to composition child ZC_GRPH_Claim,
      _Requests : redirected to composition child ZC_GRPH_Request
}
