CLASS zgrph_employee_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZGRPH_EMPLOYEE_GENERATOR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA employees TYPE TABLE OF ZGRPH_employee.
    DATA employee TYPE ZGRPH_employee.

    " Delete Employees
    DELETE FROM zGRPH_employee.

    "Administrator Data
    employee-client          = sy-mandt.
    employee-created_by      = 'GENERATOR'.
    employee-last_changed_by = 'GENERATOR'.
    GET TIME STAMP FIELD employee-created_at.
    GET TIME STAMP FIELD employee-last_changed_at.

    " Create Employee
    employee-id = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_number = '000001'.
    employee-forename = 'Hans'.
    employee-surename = 'Maier'.
    employee-entry_date = '20000501'.



    APPEND employee TO employees.

    " Create Employee
    employee-id = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_number = '000002'.
    employee-forename = 'Lisa'.
    employee-surename = 'Müller'.
    employee-entry_date = '20100701'.

    APPEND employee TO employees.

    " Create Employee
    employee-id = cl_system_uuid=>create_uuid_x16_static( ).
    employee-employee_number = '000003'.
    employee-forename = 'Petra'.
    employee-surename = 'Schmid'.
    employee-entry_date = '20221001'.

    APPEND employee TO employees.


    " Insert Employees
    INSERT ZGRPH_employee FROM TABLE @employees.

  ENDMETHOD.
ENDCLASS.
