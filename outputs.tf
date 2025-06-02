output "VPC_ID_child" {
  value = aws_vpc.main.id
}

output "Subnet_ID_child" {
  value = aws_subnet.primary.id
}
