@EndUserText.label: 'Request Base View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZR_GRPH_Request as select from zgrph_request
association to parent ZR_GRPH_Employee as _Employee
    on $projection.Id = _Employee.Id
{
    key zgrph_request.id as Id,
    zgrph_request.applicant as Applicant,
    zgrph_request.approver as Approver,
    zgrph_request.start_date as StartDate,
    zgrph_request.end_date as EndDate,
    zgrph_request.comment_request as CommentRequest,
    zgrph_request.status as Status,
    zgrph_request.created_by as CreatedBy,
    zgrph_request.created_at as CreatedAt,
    zgrph_request.last_changed_by as LastChangedBy,
    zgrph_request.last_changed_at as LastChangedAt,
    
    /*Associations*/
    _Employee
}
