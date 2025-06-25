resource "aws_instance" "devops" {
    ami = var.ami_id #devops-practice us-east-1
    instance_type = var.instance_type
    security_groups = [aws_security_group.Allow-all0.name]
    tags = var.tags
}
