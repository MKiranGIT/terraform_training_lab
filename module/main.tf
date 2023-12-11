module "webserver" {
#  source = "./lab"
#Provide the git source
   source = "git@github.com:MKiranGIT/repo-lab.git"
#  instance_type = var.instance_type
   instance_type = "t3.micro"
  # Specify dependencies explicitly using depends_on if needed
  }
