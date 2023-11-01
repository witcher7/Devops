
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {

  ami           =  "ami-0287a05f0ef0e9d9a"
  instance_type = "t2.micro"
  subnet_id = "subnet-00520e3d13cfb284b"
  vpc_security_group_ids = ["sg-01645a478c061263b"]
  tags          = {
  Name = "Henar_kufre_server"
  }

}
