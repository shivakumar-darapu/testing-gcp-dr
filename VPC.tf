data "google_project" "kubernetes-labs" {
  project_id = "grand-thought-365806"
}



resource "null_resource" "create-pri-to-sec-restore-plan" {
 provisioner "local-exec" {

    command = <<-EOF
              gcloud beta container backup-restore backups list --project='grand-thought-365806' --location='us-east1' --backup-plan='thd-us-west-to-us-east-backup-plan' 
              EOF
  }
}
