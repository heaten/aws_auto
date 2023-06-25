
provider "aws" {
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
    key_name = "${var.ami_key_pair_name}"

    vpc_security_group_ids = [aws_security_group.main.id]
    # security_groups = ["${aws_security_group.main.id}"]

    root_block_device {
      volume_size = 30 # in GB <<----- I increased this!
      volume_type = "gp3"
      #encrypted   = true
    }
}
