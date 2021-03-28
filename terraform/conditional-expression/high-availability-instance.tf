variable "high_availability" {
  type = bool
  description = "If this is a multiple instance deployment, choose `true` to deploy 3 instances"
  default = true
}

resource "aws_instance" "ubuntu" {
  count = (var.high_availability == true ? 3 : 1)
  ami = "ami-0e17ad9abf7e5c818"
  instance_type = "t2.micro"
}