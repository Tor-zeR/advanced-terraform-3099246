resource "google_service_account" "service_accounts" {
  for_each        = toset(["dev", "qa", "stage", "prod"])
  account_id      = "viewer-sa-${each.key}"
  display_name    = "Viewer Service Account for ${each.key}"
  project         = var.project_id
}

resource "google_project_iam_member" "project_roles" {
  for_each = toset(["dev", "qa", "stage", "prod"])

  project = var.project_id
  role    = "roles/viewer"
  member  = "serviceAccount:${google_service_account.service_accounts[each.key].email}"
}
