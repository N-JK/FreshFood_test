terraform {

  backend "local" {
    path = "/Users/ASUS/OneDrive/Desktop/freshfoodtest-master/tfstatefile/terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

