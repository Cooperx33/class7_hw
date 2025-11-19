resource "aws_internet_gateway" "salsa_sun" {
  vpc_id = aws_vpc.salsa_sun.id

  tags = {
    Name = "terraform-igw"
  }
}