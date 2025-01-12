module "k8s_cluster" {
    source = "./k8s-cluster"
    namespace  = local.namespace
    certmgr = var.certmgr 
}

module "certmgr" {
    source = "./cert-manager"
    namespace = module.k8s_cluster.namespace
    mydomain = local.mydomain
    depends_on = [module.k8s_cluster]
}

