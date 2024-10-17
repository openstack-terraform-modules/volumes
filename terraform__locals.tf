locals {
    deployment = var.deployment

    cluster_prefix = var.cluster_prefix
    group_prefix = var.group_prefix
    volume_name = format("%s-%s-%s-%s-%s",
        local.cluster_prefix,
        local.group_prefix,
        "%s",
        var.volume_name,
        local.deployment.id,
    )
    volume_count = var.volume_count
}