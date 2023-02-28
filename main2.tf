provider "aws" {
  region = "us-east-1"
}


data "aws_subnet" "name" {
   id = "subnet-0652a95d0018d1423"
}

resource "aws_instance" "aidanas_instance" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
  subnet_id = data.aws_subnet.name.id
  associate_public_ip_address = true
  tags = {
    Name = "terraform-instanse"
    Owner="aidana"
  }
}