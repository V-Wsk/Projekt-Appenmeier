 @EndUserText.label: 'Request Base View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZR_GRPH_Request as select from zgrph_request
association to parent ZR_GRPH_Employee as _Employee
    on $projection.EmployeeId = _Employee.Id
{
    key id as Id,
    employee_id as EmployeeId,
    applicant as Applicant,
    approver as Approver,
    start_date as StartDate,
    end_date as EndDate,
    comment_request as CommentRequest,
    status as Status,
    created_by as CreatedBy,
    created_at as CreatedAt,
    last_changed_by as LastChangedBy,
    last_changed_at as LastChangedAt,
    
    /*Associations*/
    _Employee
}
