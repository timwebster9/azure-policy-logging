resource "azurerm_policy_definition" "policy" {
  name         = var.policy_name
  policy_type  = "Custom"
  mode         = var.policy_mode
  display_name = var.policy_display_name
  management_group_name = var.management_group_name

  metadata = <<METADATA
    {
    "category": "General"
    }

METADATA


  policy_rule = file("${var.rules_file}")

  parameters = file("${var.parameters_file}")
}