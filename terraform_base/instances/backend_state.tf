terraform {
  backend "s3" {
    bucket         = "studentsu8-terraform-state-backend"
    region         = "us-west-2"
    key            = "student.u8-instance-state"
    dynamodb_table = "terraform_state_u8"
  }
}