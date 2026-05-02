terraform {
 backend "gcs" {
   bucket  = "terraform-state-920722724682"
   prefix  = "tf/state"
 }
}
