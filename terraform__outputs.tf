output outputs {
    description = "the deployed volumes"
    value = jsonencode(element(openstack_blockstorage_volume_v3.volume.*, 0))
}