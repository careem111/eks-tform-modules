resource "aws_vpc" "eks_vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}


resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.eks_vpc.id

  tags = {
    Name = var.vpc_tag
  }
}


resource "aws_eip" "ip" {
}

resource "aws_nat_gateway" "eksnat" {
  allocation_id = aws_eip.ip.id
  subnet_id     = aws_subnet.pub_subnet_1.id

}