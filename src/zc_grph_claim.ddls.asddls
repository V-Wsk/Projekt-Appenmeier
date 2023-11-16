@EndUserText.label: 'Anspruch Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_GRPH_Claim as projection on ZR_GRPH_Claim
{
    key Id,
    EmployeeId,
    Employee,
    YearClaim,
    VacationDays,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
     /* Associations */
    _Employee : redirected to parent ZC_GRPH_EMPLOYEE
}
