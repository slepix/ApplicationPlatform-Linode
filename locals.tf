locals {
  kubeconfig_yaml = base64decode(linode_lke_cluster.appplatform.kubeconfig)
  kubeconfig_hcl  = yamldecode(local.kubeconfig_yaml)
  workerpool      = linode_lke_cluster.appplatform.pool[0].id
}
