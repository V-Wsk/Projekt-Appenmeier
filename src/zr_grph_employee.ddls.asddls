@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Mitarbeiter ist Wurzel'
define root view entity ZR_GRPH_Employee
  as select from zgrph_employee
  // composition of target_data_source_name as _association_name
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
      last_changed_at as LastChangedAt
      //   _association_name // Make association public
}
