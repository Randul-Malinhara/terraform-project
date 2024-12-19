```hcl
   resource "aws_instance" "example" {
     count         = var.instance_count
     ami           = "ami-12345678"
     instance_type = "t2.micro"
   }
   ```