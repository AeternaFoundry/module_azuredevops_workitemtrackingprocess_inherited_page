output "workitemtrackingprocess_inherited_pages_id" {
  description = "Map of id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.id }
}
output "workitemtrackingprocess_inherited_pages_label" {
  description = "Map of label values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.label }
}
output "workitemtrackingprocess_inherited_pages_page_id" {
  description = "Map of page_id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.page_id }
}
output "workitemtrackingprocess_inherited_pages_process_id" {
  description = "Map of process_id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.process_id }
}
output "workitemtrackingprocess_inherited_pages_work_item_type_id" {
  description = "Map of work_item_type_id values across all workitemtrackingprocess_inherited_pages, keyed the same as var.workitemtrackingprocess_inherited_pages"
  value       = { for k, v in azuredevops_workitemtrackingprocess_inherited_page.workitemtrackingprocess_inherited_pages : k => v.work_item_type_id }
}

