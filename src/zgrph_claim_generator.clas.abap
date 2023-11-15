CLASS zgrph_claim_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZGRPH_CLAIM_GENERATOR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA claims TYPE TABLE OF ZGRPH_claim.
    DATA claim TYPE ZGRPH_claim.

    " Delete Claim 1
    DELETE FROM zGRPH_claim.

    " Create Claim
    claim-client = sy-mandt.
    claim-id = '000001'.
    claim-employee = '000001'.
    claim-year_claim = '2022'.
    claim-vacation_days = '30'.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Create Claim 2
    claim-client = sy-mandt.
    claim-id = '000002'.
    claim-employee = '000001'.
    claim-year_claim = '2023'.
    claim-vacation_days = '30'.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Create Claim 3
    claim-client = sy-mandt.
    claim-id = '000003'.
    claim-employee = '000002'.
    claim-year_claim = '2023'.
    claim-vacation_days = '30'.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Create Claim 4
    claim-client = sy-mandt.
    claim-id = '000004'.
    claim-employee = '000003'.
    claim-year_claim = '2023'.
    claim-vacation_days = '7'.
    claim-created_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-created_at.
    claim-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD claim-last_changed_at.

    APPEND claim TO claims.


    " Insert Claim
    INSERT ZGRPH_claim FROM TABLE @claims.

  ENDMETHOD.
ENDCLASS.
