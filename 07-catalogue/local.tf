locals {
  ami_id  = data.aws_ami.joindevops.id
  vpc_id = data.aws_ssm_parameter.vpc_id.value
  private_subnet_ids = split(",", data.aws_ssm_parameter.private_subnet_id.value)
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_id.value)[0]
  backend_alb_sg_id = data.aws_ssm_parameter.backend_alb_sg_id.value
  catalogue_sg_id = data.aws_ssm_parameter.catalogue_sg_id.value
  backend_alb_listner_arn = data.aws_ssm_parameter.backend_alb_listner_arn

  common_tags = {
    Project     = var.project
    Environment = var.environment
    Terraform = "true"

  }

}