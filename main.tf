provider "aws"{
    region = var.AWS_REGION
}

resource "aws_instance" "deham6demos"{
    ami = "ami-0617f77bd30aaddb7"
    instance_type = "t3.micro"
    key_name = "Deham6_Eu_North_1"
    vpc_security_group_ids = ["sg-00308425bcd3dd81e"]
    subnet_id = "subnet-01fdaf7077776c101"
    tags = {
        Name = "deham6demos"
    }
    provisioner "local-exec"{
    command = "echo Instance Type=${self.instance_type},Instance ID=${self.id},Public DNS=${self.public_dns},AMI ID=${self.ami} >> allinstancedetails"
  }
}