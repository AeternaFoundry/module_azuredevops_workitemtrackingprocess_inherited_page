variable "workitemtrackingprocess_inherited_pages" {
  description = <<EOT
Map of workitemtrackingprocess_inherited_pages, attributes below
Required:
    - label
    - page_id
    - process_id
    - work_item_type_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    label             = string
    page_id           = string
    process_id        = string
    work_item_type_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_pages : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.process_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_pages : (
        length(trimspace(v.work_item_type_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_pages : (
        length(trimspace(v.page_id)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.workitemtrackingprocess_inherited_pages : (
        length(trimspace(v.label)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

