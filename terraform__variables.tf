variable deployment {
    type = object({
      id = string
      uuid = string
      tenant_name = string
    })
}

variable cluster_prefix {
    type = string
}

variable group_prefix {
    type = string
}

variable volume_name {
    type = string
}
variable volume_size {
    type = number
}
variable volume_count {
    type = number
}

variable domain_name {
    type = string
}