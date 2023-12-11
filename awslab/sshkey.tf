resource "aws_key_pair" "student" {
  key_name   = "training-88"
  public_key = file("~/awslab/training.88-vm-key.pub")  # Path to your public key file
}
