data "aws_ssm_parameter" "backend_sg_id" {
  name = "/${var.project_name}/${var.enivronment}/vpn_sg_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
    #/expense/dev/public_subnet_ids
  name = "/${var.project_name}/${var.enivronment}/private_subnet_ids"
}

data "aws_ssm_parameter" "vpc_id" {
    #/expense/dev/public_subnet_ids
  name = "/${var.project_name}/${var.enivronment}/vpc_id"
}

data "aws_ami" "joindevops" {
  most_recent = true
  owners = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

