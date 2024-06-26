module "iam_role" {
  source = "../../modules/iam/role"

  role_enable = true
  role_name   = "ec2-role"

  policy_document_service_identifiers = ["ec2.amazonaws.com"]

  role_policy_attachment_enable      = false
  role_policy_attachment_policy_arns = []

  instance_profile_enable = true
  instance_profile_name   = "ec2-profile"
}

module "ec2" {
  source = "../../modules/computing/ec2"

  key_pair_enable     = true
  key_pair_name       = "key-pair"
  key_pair_public_key = "c3NoLWVkMjU1MTkgQUFBQUMzTnphQzFsWkRJMU5URTVBQUFBSUtvMEhtUWVOd3NyUWFJbnFBL2pVb05VUFZGQ0hZMDIzQU1yTnhNdTlzQnogZG9uZ21pbmxlZUBEb25nbWludWktTWFjQm9va0Fpci5sb2NhbAo="

  instance_enable       = true
  instance_subnet_name  = "public-subnet-0"
  instance_sg_name      = "sg"
  instance_profile_name = module.iam_role.instance_profile_name

  instance_ami  = "ami-07d6bd9a28134d3b3" # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type
  instance_type = "t3.medium"

  instance_volume_size   = 50
  instance_ebs_optimized = true

  instance_user_data_enable = true

  instance_monitoring                  = true
  instance_disable_api_termination     = true
  instance_initiated_shutdown_behavior = "stop"

  instance_name = "ec2-instance"

  dlm_enable      = true
  dlm_description = "EBS backup of EC2 instance"
  dlm_role_arn    = module.iam_role.iam_role_arn
  dlm_state       = "ENABLED"

  dlm_resource_types         = ["VOLUME"]
  dlm_schedule_name          = "DailyBackup"
  dlm_schedule_interval      = 24
  dlm_schedule_interval_unit = "HOURS"
  dlm_schedule_times         = ["18:00"]
  dlm_schedule_count         = 5
}

module "eip" {
  source = "../../modules/network/eip"

  eip_enable       = true
  eip_use_instance = true
  eip_instance_id  = module.ec2.instance_id
  eip_name         = "ec2-eip"
}
