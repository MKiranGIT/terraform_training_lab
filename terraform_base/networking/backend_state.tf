terraform {
  backend "s3" {
    bucket         = "studentsu8-terraform-state-backend"
    region         = "us-west-2"
    key            = "student.u8-network-state"
    dynamodb_table = "terraform_state_u8"
  }
}