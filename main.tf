provider "aws" {
  region= "us-east-2"
  assume_role {
      role_arn = "arn:aws:iam::486674086191:user/hema"
      session_name = "SESSION_NAME"
      external_id  = "EXTERNAL_ID"
    }   
}

resource "aws_instance" "HemaEc2" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type="t2.micro"
  
}
tags = {
    name= "HemaEC2"
}
