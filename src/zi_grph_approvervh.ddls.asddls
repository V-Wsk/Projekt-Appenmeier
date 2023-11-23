@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Wertehilfe für Approver'

define view entity ZI_GRPH_ApproverVH
  as select from zgrph_employee
{
  key id              as Id,
      forename        as Forename,
      surename        as Surename
      
      
}
