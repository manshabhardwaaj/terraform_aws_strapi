resource "aws_key_pair" "strapi_key" {
  key_name   = "strapi-key"
  public_key = file("/Users/manshabhardwaj/.ssh/id_ed25519.pub")


}

resource "aws_security_group" "strapi_sg" {
  name = "strapi-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 1337
    to_port     = 1337
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "strapi_ec2" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.strapi_key.key_name
  security_groups = [aws_security_group.strapi_sg.name]

  tags = {
    Name = "Strapi-Server"
  }
}
