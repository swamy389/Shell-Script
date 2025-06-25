resource "aws_key_pair" "deployer" {
  key_name   = "demo-pub"
  public_key = local.key_public

}

resource "aws_instance" "file-function" {
  ami = local.ami_id #devops-practice in us-east-1
  instance_type = local.instance_type
  key_name = aws_key_pair.deployer.key_name
}