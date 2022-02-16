#################
###### PROVIDERS
#################

provider "aws" {
  access_key = "DUMMY"
  secret_key = "DUMMY"
  region     = "us-east-1"
}


#################
###### DATA
#################

data "aws_ssm_provider" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-"
}



#################
###### RESOURCES
#################

# NETWORKING #

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
}
