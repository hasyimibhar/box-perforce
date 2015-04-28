provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.aws_region}"
}

resource "aws_security_group" "default" {
    name = "perforce"
    description = "For Perforce instance"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # HTTP access from anywhere
    ingress {
        from_port = 1666
        to_port = 1666
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "perforce" {
  connection {
    user = "ubuntu"
    key_file = "${var.key_path}"
  }

  instance_type = "t2.micro"
  ami = "${var.aws_ami}"
  key_name = "${var.key_name}"
  security_groups = ["${aws_security_group.default.name}"]
}
