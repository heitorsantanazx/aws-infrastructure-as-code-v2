resource "aws_instance" "web" {
  ami                    = data.aws_ami.amazon_linux_2023.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.security_group_ids
  
  user_data = file("userdata.sh")

  iam_instance_profile   = var.use_instance_profile ? var.instance_profile : null

  tags = {
    Name        = var.instance_name
    Environment = var.environment
  }

  root_block_device {
    volume_size = 8
  }
}