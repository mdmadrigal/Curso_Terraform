resource "aws_subnet" "lab-subnet_public_1a" {
  vpc_id                  = aws_vpc.lab_vpc.id
  cidr_block              = "10.10.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "ocmunidadedevops-subnet-1a"
  }
}


resource "aws_subnet" "lab_subnet_public_1b" {
  vpc_id                  = aws_vpc.lab_vpc.id
  cidr_block              = "10.10.2.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "comunidadedevops-subnet-1b"
  }
}