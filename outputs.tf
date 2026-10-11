output "dns_managed_zone_iam_members_id" {
  description = "Map of id values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no id are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_managed_zone_iam_members_condition" {
  description = "Map of condition values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no condition are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "dns_managed_zone_iam_members_etag" {
  description = "Map of etag values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no etag are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "dns_managed_zone_iam_members_managed_zone" {
  description = "Map of managed_zone values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no managed_zone are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => v.managed_zone if v.managed_zone != null && length(v.managed_zone) > 0 }
}
output "dns_managed_zone_iam_members_member" {
  description = "Map of member values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no member are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => v.member if v.member != null && length(v.member) > 0 }
}
output "dns_managed_zone_iam_members_project" {
  description = "Map of project values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no project are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dns_managed_zone_iam_members_role" {
  description = "Map of role values across all dns_managed_zone_iam_members, keyed the same as var.dns_managed_zone_iam_members except keys with no role are omitted"
  value       = { for k, v in google_dns_managed_zone_iam_member.dns_managed_zone_iam_members : k => v.role if v.role != null && length(v.role) > 0 }
}

