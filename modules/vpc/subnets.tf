resource "aws_subnet" "pub_subnet_1" {
  vpc_id     = aws_vpc.eks_vpc.id
  availability_zone = var.az1
  cidr_block = var.pub_subnet_1_cidr

  tags = {
    Name = var.pub_subnet_1_name
  }
}

resource "aws_subnet" "pub_subnet_2" {
  vpc_id     = aws_vpc.eks_vpc.id
  availability_zone = var.az2
  cidr_block = var.pub_subnet_2_cidr

  tags = {
    Name = var.pub_subnet_2_name
  }
}

resource "aws_subnet" "prv_subnet_1" {
  vpc_id     = aws_vpc.eks_vpc.id
  availability_zone = var.az1
  cidr_block = var.prv_subnet_1_cidr

  tags = {
    Name = var.prv_subnet_1_name
  }
}

resource "aws_subnet" "prv_subnet_2" {
  vpc_id     = aws_vpc.eks_vpc.id
  availability_zone = var.az2
  cidr_block = var.prv_subnet_2_cidr

  tags = {
    Name = var.prv_subnet_2_name
  }
}