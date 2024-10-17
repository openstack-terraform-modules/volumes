output outputs {
    description = "the deployed volumes"
    value = {
        for k, v in openstack_blockstorage_volume_v3.volume : k => v
    }
}