##########################
# EFS for media storage. #
##########################

resource "aws_efs_file_system" "media" {
  encrypted = true
  tags = {
    Name = "${local.prefix}-media"
  }
}

resource "aws_security_group" "efs" {
  name   = "${local.prefix}-efs"
  vpc_id = aws_vpc.main.id

# 2049 default Network file system port
  ingress {
    from_port = 2049
    to_port   = 2049
    protocol  = "tcp"

# only allow ecs access
    security_groups = [
      aws_security_group.ecs_service.id
    ]
  }
}
