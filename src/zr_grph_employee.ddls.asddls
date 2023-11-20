@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Mitarbeiter ist Wurzel'
define root view entity ZR_GRPH_Employee
  as select from zgrph_employee
  
  composition [0..*] of ZR_GRPH_Claim as _Claims
  composition [0..*] of ZR_GRPH_Request as _Requests
 
{
      @EndUserText: {label: 'Employee UUID', quickInfo: 'Employee UUID'}
  key id              as Id,
      employee_number as EmployeeNumber,
      forename        as Forename,
      surename        as Surename,
      entry_date      as EntryDate,
      
      
      /* Administrative Data */
      created_by      as CreatedBy,
      created_at      as CreatedAt,
      last_changed_by as LastChangedBy,
      last_changed_at as LastChangedAt,
      
      
      /*Associations*/
      _Claims,
      _Requests
}
