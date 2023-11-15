@EndUserText.label: 'Mitarbeiter Projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZC_GRPH_EMPLOYEE
  as projection on ZR_GRPH_Employee
{
  key Id,
      EmployeeNumber,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Forename,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.7
      Surename,
      EntryDate,
      
      /*Administrativ Data*/
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt
}
