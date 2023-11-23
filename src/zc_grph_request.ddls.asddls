@EndUserText.label: 'Request Projection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_GRPH_Request as projection on ZR_GRPH_Request
{
    key Id,
    EmployeeId,
    Applicant,
    Approver,
    StartDate,
    EndDate,
    CommentRequest,
     @Consumption.valueHelpDefinition: [{ entity: { name: 'ZI_GRPH_StatusVH', element: 'Status' } }]
    Status,
    CreatedBy,
    CreatedAt,
    LastChangedBy,
    LastChangedAt,
    
   /* Associations */
    _Employee : redirected to parent ZC_GRPH_EMPLOYEE
}
