import pulumi
import pulumi_aws as aws

vpc = aws.ec2.Vpc("main-vpc", cidr_block="10.0.0.0/16")

ec2_instance = aws.ec2.Instance("example",
    instance_type="t2.micro",
    ami="ami-12345678")