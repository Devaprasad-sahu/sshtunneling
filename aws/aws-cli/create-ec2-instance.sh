#!/bin/bash
## Launch the instance 
:<<COMMENT
# ec2 instance creation command syntax
aws ec2 run-instances 
--image-id <your image id> 
--instance-type <your instance type> 
--count <total no. of instance> 
--subnet-id <subnet id of preferred zone> 
--security-group-ids <id of security group> 
--key-name <name of key value pair>
COMMENT

image_id=ami-0a245a00f741d6301
count=1
instance_type=t2.micro
key_name=ncd-keypair1
security_group_ids=sg-903004f8
subnet_id=subnet-6e7f829e

aws ec2 run-instances \
--image-id $image_id \
--count $count \
--instance-type $instance_type \
--key-name $key_name \
--security-group-ids $security_group_ids \
--subnet-id $subnet_id
