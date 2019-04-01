terraform {
  backend "consul" {
    address = "demo.consul.io"
    path = "getting-started-iantest"
    lock = false
  }
}

provider "aws" {
  access_key = "AKIAIOZWDLWTELO6I2JA"
  secret_key = "eyV9Xk5sOy7Nl3mdcgH9VqZzIGS7Ep3hqlmnmLdu"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}