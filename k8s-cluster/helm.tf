#######################################################################################
# HELM INSTALL
#######################################################################################

resource "helm_release" "certmgr" {
  name       = "certmgr"
  namespace  = var.namespace
  chart      = "./k8s-cluster/cert-manager-v1.15.0.tgz"
  version    = "1.15.0"

  set {
      name  = "crds.enabled"
      value = true
    }

  count  = var.certmgr ? 1 : 0
} 

