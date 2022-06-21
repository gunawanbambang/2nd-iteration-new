provider "aws" {
  region = "us-east-2"
}

variable "server_port" {
  type = number
  description = "the port number of the webserver"
  default = 8080
}

resource "aws_instance" "example" {
  ami = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p ${var.server_port} &
              EOF

  tags = {
    Name = "terraform-example"
  }
}

resource "aws_security_group" "instance" {
  name = "terraform-example-instance"

  ingress = [ {
    cidr_blocks          = [ "0.0.0.0/0" ]
    description          = "open 8080 for example"
    from_port            = var.server_port
    protocol             = "tcp"
    to_port              = var.server_port
    ipv6_cidr_blocks     = []
    prefix_list_ids      = []
    security_groups      = []
    self                 = false
  } ]
}


output "public_ip" {
  description            = "public ip of the webserver"
  value                  = aws_instance.example.public_ip
}