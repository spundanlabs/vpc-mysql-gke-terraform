resource "google_sql_database_instance" "instance-a" {
  name   = "tf-spundan-mysql-demo-5"
  region = "asia-southeast1"

  settings {
    tier                   = "db-f1-micro"
    crash_safe_replication = false

    location_preference {
      zone = "asia-southeast1-a"
    }

    ip_configuration {
      ipv4_enabled = "true"

      # authorized_networks {
      #   value = "49.228.78.2/32"
      #   name  = "office-ip"
      # }
    }
  }
}