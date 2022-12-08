data "google_project" "kubernetes-labs" {
  project_id = "grand-thought-365806"
}



resource "null_resource" "create-pri-to-sec-restore-plan" {
 provisioner "local-exec" {

    command = "gcloud beta container backup-restore backup-plans list"
  }
}
