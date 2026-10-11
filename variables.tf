variable "dns_managed_zone_iam_members" {
  description = <<EOT
Map of dns_managed_zone_iam_members, attributes below
Required:
    - managed_zone
    - member
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    managed_zone = string
    member       = string
    role         = string
    project      = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

