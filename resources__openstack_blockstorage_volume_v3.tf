resource openstack_blockstorage_volume_v3 volume {
  count = local.volume_count

  name = format(local.volume_name, count.index+1)
  
  size = local.volume_size

  metadata = {
    "DEPLOYMENT_UUID": local.deployment.uuid,
    "DEPLOYMENT_ID": local.deployment.id,
    "VOLUME_NAME": format(local.volume_name, count.index+1)
    "VOLUME_DOMAIN": local.domain_name,
    "VOLUME_FQDN": join(".",[format(local.volume_name, count.index+1), local.domain_name])
  }
}
