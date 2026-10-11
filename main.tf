resource "azuredevops_workitemtrackingprocess_inherited_page" "workitemtrackingprocess_inherited_pages" {
  for_each = var.workitemtrackingprocess_inherited_pages

  label             = each.value.label
  page_id           = each.value.page_id
  process_id        = each.value.process_id
  work_item_type_id = each.value.work_item_type_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

