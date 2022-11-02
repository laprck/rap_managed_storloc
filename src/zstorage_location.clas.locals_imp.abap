class lhc_StorageLocation definition inheriting from cl_abap_behavior_handler.
  private section.

    methods get_instance_authorizations for instance authorization
      importing keys request requested_authorizations for StorageLocation result result.

endclass.

class lhc_StorageLocation implementation.

  method get_instance_authorizations.
    " read existing storage locations
    read entities of ZStorageLocation in local mode " `ZStorageLocation` = name of BDef
      entity StorageLocation
        fields ( Plant StorageLocation StorageLocationName ) with corresponding #( keys )
        result data(storage_locations)
        failed failed.

    check storage_locations is not initial.

    loop at storage_locations into data(storage_location).
      append value #( %tky = storage_location-%tky
                      %update = if_abap_behv=>auth-allowed
                      %delete = if_abap_behv=>auth-allowed
                    )
        to result.
    endloop.
  endmethod.


endclass.
