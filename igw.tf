resource "aws_internet_gateway" "lab_igw" {
  vpc_id = aws_vpc.lab_vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-igw"
    }

  )
}


resource "aws_route_table" "lab_public_route_table" {
  vpc_id = aws_vpc.lab_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab_igw.id
  }

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-pub-routetable"
    }

  )

}