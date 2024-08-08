#Create a new project:
resource "google_project" "my_project" {
  name       = "DevOps Capstone Challenge"
  project_id = "devops-capstone-challenge"
  billing_account = var.billing_account
}

#Set the provider:
provider "google" {
  project     = "devops-capstone-challenge"
  region      = "us-central1"
}

#Create a service account (Commented to avoid duplicate. Incomplete):
# resource "google_service_account" "service_account" {
#   account_id   = var.account_id
#   display_name = "DevOps Capstone Challenge Service Account"
# }

#*Manually access service accounts and create new key-pair*
#Store variables in .tfvars (GitIgnore)
#Authenticate in Google Cloud Shell

#Bucket for Terraform State:
# resource "google_storage_bucket" "static" {
#  name          = "terraform-state-vn-devops-capstone-challenge-project"
#  location      = "US"
#  storage_class = "STANDARD"

#  uniform_bucket_level_access = true
# }

# #Bucket for QR Code Images:
# resource "google_storage_bucket" "static" {
#  name          = "devops-capstone-challenge-bucket"
#  location      = "US"
#  storage_class = "STANDARD"

#  uniform_bucket_level_access = true
# }