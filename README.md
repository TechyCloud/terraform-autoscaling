# terraform-autoscaling

Terraform module to provision Auto Scaling Group and Launch Configuration on AWS. The module also creates AutoScaling Policies and CloudWatch Metric Alarms to monitor CPU utilization on the EC2 instances and scale the number of instance in the AutoScaling Group up or down.

## Prerequisites
- Terraform v0.13.5
- AWS CLI
- IAM Access Key & Secret Key

**This module will launching the below resources as per given veriables in the AWS console.**
- Autoscaling Group
- Launch Configuraion
- Autoscaling Policy

## Usage
You can download terraform code [here](https://github.com/TechyCloud/terraform-autoscaling/archive/main.zip) to create the Autoscaling Group. 

Once downloaded you can update the below vaiables in **main.tf** file on **tf_autoscaling** folder. 

```
VPC_ID = "VPC-ID"
Ec2_SG_Name = "Ec2-SG"
ami_id = "ami-0655######841023"
instance_type = "t2.micro"
key_name = "Key-Name"
alb_target_group = "Target-Group"
ASG_Subnet_1 = "Subnet-ID-Az01"
ASG_Subnet_2 = "Subnet-ID-Az02"
launch_config_name = "Test-LC"
```

The code is ready to launch the resources after updating the variabls in **main.tf** file. 

You can run the below command to initialize the configuration before going to apply the changes in **tf_autoscaling** directory.

> terraform init

Once succeed the above command, You can run the below apply command to launch the resouces in console. For this step, Please keep it ready IAM user access and secret key to apply the changes.   

> terraform apply


**!! Once the command is succeed, You have successfully setup the ASG with terraform !!**

###### Thanks for using this Block.
