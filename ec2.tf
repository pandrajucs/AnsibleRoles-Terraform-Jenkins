resource "aws_instance" "centos" {
  count                       = 2
  ami                         = var.cent_ami_id
  instance_type               = var.ec2_type
  associate_public_ip_address = true
  availability_zone           = var.cent_region
  key_name                    = var.key
  subnet_id                   = var.cent_subnetid
  vpc_security_group_ids      = [var.sg]
  user_data                   = file("script.sh")
  tags = {
    "Name" = "CentOS-Server-${count.index + 1}"
  }

}

resource "aws_instance" "ubuntu" {
  count                       = 2
  ami                         = var.ubuntu_ami_id
  instance_type               = var.ec2_type
  associate_public_ip_address = true
  availability_zone           = var.ubuntu_region
  key_name                    = var.key
  subnet_id                   = var.ubuntu_subnetid
  vpc_security_group_ids      = [var.sg]
  user_data                   = file("script.sh")
  tags = {
    "Name" = "Ubuntu-Server-${count.index + 1}"
  }

}
