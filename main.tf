
provider "aws" {
    # # access_key = "${var.access_key}"
    # # secret_key = "${var.secret_key}"
    # region = "eu-north-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"

    root_block_device {
      volume_size = 30 # in GB <<----- I increased this!
      volume_type = "gp3"
      #encrypted   = true
    }
}