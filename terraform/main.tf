#the file to mention the desired state


#simple file resource
resource "local_file" "freshfood_test" {
  #filename = "terraform"
  #filename = "${path.module}"
  filename = "/Users/ASUS/OneDrive/Desktop/freshfoodtest-master/terraform/TFfile${count.index}.txt"
  content = "Hi Nibin, Terraform says hi!!!!!!"
  count = 3
}

resource "local_sensitive_file" "freshfood_test2" {
  content  = "This is sensitive info"
  filename = "${path.module}/TF2file.txt"
}