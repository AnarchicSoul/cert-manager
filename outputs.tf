output "namespace" {
  value = module.k8s_cluster.namespace
}
output "myca" {
  value = nonsensitive(module.certmgr.myca)
}