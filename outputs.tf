output "workitemtrackingprocess_inherited_pages_id" {
  description = "Map of id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages except keys with no id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workitemtrackingprocess_inherited_pages_label" {
  description = "Map of label values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages except keys with no label are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.label if v.label != null && length(v.label) > 0 }
}
output "workitemtrackingprocess_inherited_pages_page_id" {
  description = "Map of page_id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages except keys with no page_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.page_id if v.page_id != null && length(v.page_id) > 0 }
}
output "workitemtrackingprocess_inherited_pages_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages except keys with no process_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.process_id if v.process_id != null && length(v.process_id) > 0 }
}
output "workitemtrackingprocess_inherited_pages_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages except keys with no work_item_type_id are omitted"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.work_item_type_id if v.work_item_type_id != null && length(v.work_item_type_id) > 0 }
}

