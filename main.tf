resource "aws_ssoadmin_customer_managed_policy_attachment" "ssoadmin_customer_managed_policy_attachments" {
  for_each = var.ssoadmin_customer_managed_policy_attachments

  instance_arn       = each.value.instance_arn
  permission_set_arn = each.value.permission_set_arn
  region             = each.value.region

  customer_managed_policy_reference {
    name = each.value.customer_managed_policy_reference.name
    path = each.value.customer_managed_policy_reference.path
  }
}

