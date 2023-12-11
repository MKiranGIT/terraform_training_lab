resource "aws_security_group" "open_ports" {
name = "student.08-security-group"
vpc_id = aws_vpc.main-vpc.id
ingress {
description = "allow ingress on port 22"
from_port = 22
to_port = 22
protocol = "tcp"
cidr_blocks = ["0.0.0.0/0"]
}
egress {
description = "allows unlimited egress"
from_port = 0
to_port = 0
protocol = -1
cidr_blocks = ["0.0.0.0/0"]
}
}
