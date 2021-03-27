resource "aws_instance" "foo" {
  ami           = "ami-0e17ad9abf7e5c818"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-Auto",
    Role = "Test2"
  }
}