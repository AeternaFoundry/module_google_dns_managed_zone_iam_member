resource "google_dns_managed_zone_iam_member" "dns_managed_zone_iam_members" {
  for_each = var.dns_managed_zone_iam_members

  managed_zone = each.value.managed_zone
  member       = each.value.member
  role         = each.value.role
  project      = each.value.project

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

