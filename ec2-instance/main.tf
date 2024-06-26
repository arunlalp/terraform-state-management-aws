resource "aws_instance" "terraform-state-test" {
  ami       	= "ami-0cf2b4e024cdb6960"
  instance_type = "t2.micro"
  tags = {
	Name = "test-instance"
  }
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-test-9765"
    region         = "us-west-2"
    dynamodb_table = "terraform_state_lock"
    key            = "dev/ec2.tfstate"
    encrypt        = true
  }
}