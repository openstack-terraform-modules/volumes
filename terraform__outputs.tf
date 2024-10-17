output outputs {
    value = jsonencode(element(openstack_blockstorage_volume_v3.volume.*, 0))
}