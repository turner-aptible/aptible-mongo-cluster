terraform {
  required_providers {
    aptible = {
      source  = "aptible/aptible"
      version = ">=0.4.1"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.4.3"
    }
  }
}