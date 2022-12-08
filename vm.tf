resource "google_compute_instance" "myjumphost" {
  name         = "jump-host-1"
  machine_type = "e2-micro"
  zone         = "europe-west1-c"
  project = data.google_project.kubernetes-labs.project_id
  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  

  network_interface {
    subnetwork = google_compute_subnetwork.my-test-jump-host-subnet.self_link
    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = file("./mystartupscript.sh")
  
  
}