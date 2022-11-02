@EndUserText.label: 'Storage Location (Projection)'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZSTORAGELOCATION_P
  as projection on ZStorageLocation as StorageLocation // definine as `projection` necessary for behavior projection
{
  key Plant,
      @Search.defaultSearchElement: true
  key StorageLocation,
      @Search.defaultSearchElement: true
      StorageLocationName,
      /* Associations */
      _Plant
}
