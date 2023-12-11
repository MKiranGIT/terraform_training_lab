data "aws_vpc" "selected" {
  id = "vpc-050eae9ed504d40e2"
}
data "aws_subnet" "selected" {
  id = "subnet-02c74c3c2632ff377"
}
output "selected_vpc_details" {
  value = {
    id          = data.aws_vpc.selected.id
    cidr_block  = data.aws_vpc.selected.cidr_block
    subnet = data.aws_subnet.selected.id
    # Add more attributes as needed
  }
}
