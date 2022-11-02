@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Storage Location (wo Address)'
define root view entity ZStorageLocation
  as select from t001l
  association [1..1] to I_Plant as _Plant on $projection.Plant = _Plant.Plant
{
  key werks                     as Plant,
  key lgort                     as StorageLocation,
      @Semantics.text: true
      cast(lgobe as lgort_name) as StorageLocationName,

      /* associations */
      _Plant
}
