module "lad_policy" {
  source = "./modules/policy_definition"
  policy_name = "lad_vm_policy"
  policy_display_name = "Deploy LAD for VMs"
  policy_mode = "Indexed"
  management_group_name = "parent-mgmt-group"
  rules_file = "lad_policy/rules.json"
  parameters_file = "lad_policy/parameters.json"
}
