resource "aws_internet_gateway" "lab_igw" {
  vpc_id = aws_vpc.lab_vpc.id

  tags = merge(
    local.tags,
    {
      Name = "${var.project_name}-igw"
    }

  )
}