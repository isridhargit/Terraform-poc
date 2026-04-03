
terraform {
  backend "s3" {
    bucket         = "tf-state-poc-02042026"
    key            = "poc-25/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
