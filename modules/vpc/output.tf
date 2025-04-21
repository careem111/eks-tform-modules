 output "vpc_id" {
    value = aws_vpc.eks_vpc.id
  
}

output "vpc_subnet_cidr" {
    value = aws_vpc.eks_vpc.cidr_block
  
}

output "public_subnet_ids" {
  value = [aws_subnet.pub_subnet_1.id, aws_subnet.pub_subnet_2.id]
}

output "private_subnet_ids" {
  value = [aws_subnet.prv_subnet_1.id, aws_subnet.prv_subnet_2.id]
}

