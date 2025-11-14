#the file to mention the desired state
locals {
  environment = "dev"
  upper_case = upper(local.environment)
  basepath = "${path.module}/config/${local.upper_case}"
}

#simple file resource
resource "local_file" "freshfood_test" {
  #filename = "terraform"
  #filename = "${path.module}"
  filename = "/Users/ASUS/OneDrive/Desktop/freshfoodtest-master/terraform/${var.filename-1}.txt"
  content = <<EOT
    "Hi Nibin, Terraform says hi!!!!!!"
    environment = ${local.environment}
    port=3000
    EOT
  count = var.count_num
}

resource "local_file" "example1" {
  filename = "${path.module}/${var.filename-2}.txt"
  content = "Example for demo"
  count = var.count_num
}

