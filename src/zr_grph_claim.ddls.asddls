@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Anspruch Base View'
define view entity ZR_GRPH_Claim as select from zgrph_claim
association to parent ZR_GRPH_Employee as _Employee
    on $projection.Id = _Employee.Id
{
    key id as Id,
    employee as Employee,
    year_claim as YearClaim,
    vacation_days as VacationDays,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    /*Associations*/
    _Employee
}
