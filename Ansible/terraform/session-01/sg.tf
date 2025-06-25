resource "aws_security_group" "Allow-all0" {
    name = var.sg_name
    description = "Allow all traffic"


    ingress {
        description = "Allow all inbound traffic"
        from_port   = 0
        to_port     = 0
        protocol    = "tcp"
        cidr_blocks = var.sg_cidr
        
  }

  egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = var.sg_cidr
  }

}