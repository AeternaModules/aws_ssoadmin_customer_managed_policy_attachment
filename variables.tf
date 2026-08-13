variable "ssoadmin_customer_managed_policy_attachments" {
  description = <<EOT
Map of ssoadmin_customer_managed_policy_attachments, attributes below
Required:
    - instance_arn
    - permission_set_arn
    - customer_managed_policy_reference (block):
        - name (required)
        - path (optional)
Optional:
    - region
EOT

  type = map(object({
    instance_arn       = string
    permission_set_arn = string
    region             = optional(string)
    customer_managed_policy_reference = object({
      name = string
      path = optional(string)
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

