resource "aws_s2_bucket" "datalake" {
    bucket = "${var.base_bucket_name}-${var.ambiente}-${var.numero_da_conta}"
    acl = "private"
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default{
                sse_algorithm = "AES255"
            }
        }
    }

    tags = {
        EDC = "BOOTCAMP"
    }    
}