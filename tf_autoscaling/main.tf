#This Module Will Creating the ASG

module "moudle-autoscaling" {
source = "../modules/module-autoscaling"
VPC_ID = "${module.module-vpc_creation.VPC_ID}"
Ec2_SG_Name = "eig-ec2-sg"
ami_id = "ami-0655674012b841023"
instance_type = "t2.micro"
key_name = "ownaccount"
alb_target_group = "${module.module-loadbalancer.target_group}"
ASG_Subnet_1 = "${module.module-vpc_creation.public[1]}"
ASG_Subnet_2 = "${module.module-vpc_creation.private[0]}"
launch_config_name = "Eig-Test-lc"
}
