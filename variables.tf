#######################################################################################
## Base Config
#######################################################################################
# Careful if you modify this part, be sure to know your cluster. 
# Base component can be disabled from install, but be sure they exists ! 


## Common config
locals {
    mydomain    = "${yamldecode(file("config.yaml")).baseconfig.common.mydomain}"
    ingressip = "${yamldecode(file("config.yaml")).baseconfig.common.ingressip}"
}
variable "docker-desktop" {
    description = "enable = true & disable = false"
    type        = bool
    default     = true
} 

## Kubernetes config 
variable "certmgr" {
    description = "enable = true & disable = false"
    type        = bool
    default     = true
} 
locals {
    kubeconfig   = "${yamldecode(file("config.yaml")).baseconfig.kubernetes.kubeconfig}"
    namespace    = "${yamldecode(file("config.yaml")).baseconfig.kubernetes.namespace}"
}


