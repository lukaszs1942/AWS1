provider "aws" {
  region = "eu-north-1"
}


resource "aws_instance" "ec2" {
  ami = "ami-0ff338189efb7ed37"
  instance_type = "t2.micro"
}

resource "aws_eip" "elasticeip" {
    instance = aws_instance.ec2.id
}

output "EIP" {
    value = aws_eip.elasticeip.public_ip
}
