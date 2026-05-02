terraform {
 backend "gcs" {
   bucket  = "bkt-demo-000"
   prefix  = "tf/state"
 }
}
