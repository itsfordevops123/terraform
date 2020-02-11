provider "aws" {
  region= "us-east-2"
  profile= "hema"
  
}

resource "aws_instance" "HemaEc2" {
    ami = "ami-0c55b159cbfafe1f0"
    instance_type="t2.micro"
    tags = {
        name= "HemaEC2"
    }    
}
