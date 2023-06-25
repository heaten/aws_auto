
variable "instance_name" {
        description = "Name of the instance to be created"
        default = "awsbuilder-AI-2"
}

variable "instance_type" {
        default = "t3.xlarge"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-00b8e4c717dd46b6f"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0989fb15ce71ba39e"
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 1
}


variable "ami_key_pair_name" {
        default = "lei-north-1"
}