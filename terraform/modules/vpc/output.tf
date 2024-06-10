output "aws_vpc_id" {
  value = aws_vpc.vpc.id
}

output "aws_subnet_id" {
  value = aws_subnet.sub.id
}

output "aws_security_group_id" {
  value = aws_security_group.sg.id
}