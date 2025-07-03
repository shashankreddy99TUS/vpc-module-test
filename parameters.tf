resource "aws_ssm_parameter" "vpc_id" {
  name  = "$/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

output "vpc_id" {
  value = aws_vpc.main.id
}
