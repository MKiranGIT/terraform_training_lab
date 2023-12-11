data "terraform_remote_state" "network_details" {
backend = "s3" 
config = {
bucket = "studentsu8-terraform-state-backend"
key = "student.u8-network-state"
region = "us-west-2"
}
}

data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "my_vm" {
ami = data.aws_ami.latest_amazon_linux.id
subnet_id = data.terraform_remote_state.network_details.outputs.my_subnet
instance_type = "t3.micro"
key_name = data.terraform_remote_state.network_details.outputs.my_key_pair
vpc_security_group_ids =data.terraform_remote_state.network_details.outputs.security_group_id_array

tags = {
Name = "student.08-vm1"
}
}

output "my_ec2_instance" {
value = {
    id = aws_instance.my_vm.id
    instance_type = aws_instance.my_vm.instance_type
    Name = aws_instance.my_vm.tags.Name
    public_ip = aws_instance.my_vm.public_ip
}
}