resource "aws_vpc" "custproject" {
  cidr_block = "10.0.0.0/20"
  tags = {
    name= "newvpc"
  }
}




resource "aws_subnet" "public" {
  vpc_id = aws_vpc.custproject.id
  cidr_block = "10.0.0.0/28"
  availability_zone = "us-east-2a"
  tags = {
    name = "custom subnet"
  }
}




resource "aws_subnet" "private" {
    vpc_id = aws_vpc.custproject.id
    cidr_block = "10.0.0.16/28"
    availability_zone = "us-east-2b"
    tags = {
      name = "custom subnet"
}
}



resource "aws_internet_gateway" "custproject" {
    vpc_id = aws_vpc.custproject.id
    tags = {
      name = "myIG"
    }
  
}



resource "aws_route_table" "custproject" {
  vpc_id = aws_vpc.custproject.id
  route {
    gateway_id = aws_internet_gateway.custproject.id
    cidr_block = "0.0.0.0/0"
    }

  tags = {
    name= "myRT"
  }
}


resource "aws_route_table_association" "custproject" {
  route_table_id = aws_route_table.custproject.id
  subnet_id = aws_subnet.public.id
}


resource "aws_security_group" "sgname" {
  name= "sgname"
  vpc_id =  aws_vpc.custproject.id
  tags = {
    name= "customvpcSG"
  }
  ingress {
    description = "tls to vpc"
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "tls to vpc"
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }
  ingress {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


