#criando a keypair na aws
resource "aws_key_pair" "this" {
  key_name   = "jenkins"
  public_key = file("./jenkins.pub")
}

resource "aws_instance" "jenkins" {
  ami           = var.ami
  instance_type = var.instance_type
  #associando a keypair na ec2
  key_name = aws_key_pair.this.key_name

  tags = {
    name        = var.name
    environment = var.env
    provisioner = "terraform"
    repo        = var.repo
  }
}
