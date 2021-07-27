variable policy_name {
  type        = string
  description = "Name to be used for this policy, this should correspond to the correct category folder under /policies/policy_category/policy_name if using local policies. Changing this forces a new resource to be created."
}

variable policy_display_name {
  type        = string
  description = "Name to be used for this policy, this should correspond to the correct category folder under /policies/policy_category/policy_name if using local policies. Changing this forces a new resource to be created."
}

variable policy_mode {
  type        = string
  description = "The mode of the policy, can be All or Indexed"
  default     = "All"
}

variable management_group_name {
  type        = string
  description = "The management group scope at which the policy will be defined. Changing this forces a new resource to be created."
}

variable rules_file {
  type        = string
}

variable parameters_file {
  type        = string
}




