
resource "linode_lke_cluster" "appplatform" {
  label            = "appplatform"
  region           = var.region
  k8s_version      = var.k8s_version
  control_plane {
    high_availability = true
  }

  pool {
    type  = "g6-standard-4"
    count = 3

  autoscaler {
    min = 3
    max = 10
    }
  }
}



