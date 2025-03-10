#######################################################################################
# Terraform Providers
#######################################################################################

# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    helm = {
      source = "hashicorp/helm"
      version = "2.8.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.31.0"
    }
  }
}

provider "helm" {
  kubernetes {
    config_path    = local.kubeconfig
  }
}

provider "kubernetes" {
  config_path    = local.kubeconfig
}

