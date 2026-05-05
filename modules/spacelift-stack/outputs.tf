output "id" {
  description = "The stack id"
  value       = local.enabled ? spacelift_stack.this[0].id : null
}

output "stack" {
  description = "The created stack"
  value       = local.enabled ? spacelift_stack.this[0] : null
  sensitive   = true
}

output "role_attachment_id" {
  description = "The ID of the admin role attachment, if created"
  value       = local.admin_role_enabled ? spacelift_role_attachment.admin[0].id : null
}
