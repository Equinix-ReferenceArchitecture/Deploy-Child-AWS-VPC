output "VPC_ID_child" {
  value = aws_vpc.main.id
}

output "Subnet_ID_child" {
  value = aws_subnet.primary.id
}

output "Main_RT_ID" {
  value = aws_vpc.main.default_route_table_id
}

