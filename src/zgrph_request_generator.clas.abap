CLASS zgrph_request_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZGRPH_REQUEST_GENERATOR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA requests TYPE TABLE OF ZGRPH_request.
    DATA request TYPE ZGRPH_request.

    " Delete Request
    DELETE FROM zGRPH_request.

    " Create Request 1
    request-client = sy-mandt.
    request-id = '000001'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20220701'.
    request-end_date = '20220710'.
    request-comment_request = 'Sommerurlaub'.
    request-status = 'G'.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 2
    request-client = sy-mandt.
    request-id = '000002'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20221227'.
    request-end_date = '20221230'.
    request-comment_request = 'Weihnachtsurlaub'.
    request-status = 'A'.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 3
    request-client = sy-mandt.
    request-id = '000003'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20221228'.
    request-end_date = '20221230'.
    request-comment_request = 'Weihnachtsurlaub (2. Versuch)'.
    request-status = 'G'.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 4
    request-client = sy-mandt.
    request-id = '000004'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20230527'.
    request-end_date = '20230614'.
    request-comment_request = '  '.
    request-status = 'G'.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 5
    request-client = sy-mandt.
    request-id = '000005'.
    request-applicant = '000001'.
    request-approver = '000002'.
    request-start_date = '20231220'.
    request-end_date = '20231231'.
    request-comment_request = 'Winterurlaub'.
    request-status = 'B'.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Create Request 6
    request-client = sy-mandt.
    request-id = '000006'.
    request-applicant = '000002'.
    request-approver = '000003'.
    request-start_date = '20231227'.
    request-end_date = '20231231'.
    request-comment_request = 'Weihnachtsurlaub'.
    request-status = 'B'.
    request-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-created_at.
    request-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD request-last_changed_at.

    APPEND request TO requests.


    " Insert Request
    INSERT ZGRPH_request FROM TABLE @requests.

  ENDMETHOD.
ENDCLASS.
