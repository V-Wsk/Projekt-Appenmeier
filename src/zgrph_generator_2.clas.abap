CLASS zgrph_generator_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zgrph_generator_2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA employees TYPE TABLE OF ZGRPH_employee.
    DATA employee TYPE ZGRPH_employee.

    " Delete Employees
    DELETE FROM zGRPH_employee.


    " Create Employee
    employee-id = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_number = '000001'.
    employee-forename = 'Hans'.
    employee-surename = 'Maier'.
    employee-entry_date = '20000501'.
    "Administrator Data Employee
    employee-client          = sy-mandt.
    employee-created_by      = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.

    APPEND employee TO employees.

    " Create Employee
    employee-id = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_number = '000002'.
    employee-forename = 'Lisa'.
    employee-surename = 'Müller'.
    employee-entry_date = '20100701'.
    "Administrator Data Employee
    employee-client          = sy-mandt.
    employee-created_by      = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.

    APPEND employee TO employees.

    " Create Employee
    employee-id = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_number = '000003'.
    employee-forename = 'Petra'.
    employee-surename = 'Schmid'.
    employee-entry_date = '20221001'.
    "Administrator Data Employee
    employee-client          = sy-mandt.
    employee-created_by      = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.

    APPEND employee TO employees.


    " Insert Employees
    INSERT ZGRPH_employee FROM TABLE @employees.




    DATA claims TYPE TABLE OF ZGRPH_claim.
    DATA claim TYPE ZGRPH_claim.

    " Delete Claim 1
    DELETE FROM zGRPH_claim.

    " Create Claim
    claim-id = '000001'.
    claim-employee = '000001'.
    claim-year_claim = '2022'.
    claim-vacation_days = '30'.
    "Administrator Data Claim
    claim-client = sy-mandt.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Create Claim 2
    claim-id = '000002'.
    claim-employee = '000001'.
    claim-year_claim = '2023'.
    claim-vacation_days = '30'.
   "Administrator Data Claim
    claim-client = sy-mandt.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Create Claim 3
    claim-id = '000003'.
    claim-employee = '000002'.
    claim-year_claim = '2023'.
    claim-vacation_days = '30'.
    "Administrator Data Claim
    claim-client = sy-mandt.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Create Claim 4
    claim-id = '000004'.
    claim-employee = '000003'.
    claim-year_claim = '2023'.
    claim-vacation_days = '7'.
    "Administrator Data Claim
    claim-client = sy-mandt.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.


    " Insert Claim
    INSERT ZGRPH_claim FROM TABLE @claims.

    DATA requests TYPE TABLE OF ZGRPH_request.
    DATA request TYPE ZGRPH_request.

    " Delete Request
    DELETE FROM zGRPH_request.

    " Create Request 1
    request-id = '000001'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20220701'.
    request-end_date = '20220710'.
    request-comment_request = 'Sommerurlaub'.
    request-status = 'G'.
    "Administrator Data Request
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 2
    request-id = '000002'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20221227'.
    request-end_date = '20221230'.
    request-comment_request = 'Weihnachtsurlaub'.
    request-status = 'A'.
    "Administrator Data Request
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 3
    request-id = '000003'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20221228'.
    request-end_date = '20221230'.
    request-comment_request = 'Weihnachtsurlaub (2. Versuch)'.
    request-status = 'G'.
    "Administrator Data Request
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 4
    request-id = '000004'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20230527'.
    request-end_date = '20230614'.
    request-comment_request = '  '.
    request-status = 'G'.
    "Administrator Data Request
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 5
    request-id = '000005'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20231220'.
    request-end_date = '20231231'.
    request-comment_request = 'Winterurlaub'.
    request-status = 'B'.
   "Administrator Data Request
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 6
    request-id = '000006'.
    request-applicant = '000002'.
    request-approver = '000003'.
    request-start_date = '20231227'.
    request-end_date = '20231231'.
    request-comment_request = 'Weihnachtsurlaub'.
    request-status = 'B'.
    "Administrator Data Request
    request-client = sy-mandt.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Insert Request
    INSERT ZGRPH_request FROM TABLE @requests.


  ENDMETHOD.
ENDCLASS.
