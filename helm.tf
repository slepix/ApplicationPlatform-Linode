resource "helm_release" "akamaiappplatform" {
  name       = "apl"
  namespace =  "default"
  repository = "https://linode.github.io/apl-core"
  chart      = "apl"

  set {
    name  = "cluster.name"
    value = linode_lke_cluster.appplatform.label
  }

  set {
    name  = "cluster.domainSuffix"
    value = linode_domain.apldomain.domain
  }

  set {
    name  = "dns.domainFilters[0]"
    value = linode_domain.apldomain.domain
  }
  
  set {
    name  = "dns.provider.linode.apiToken"
    value = var.linode_token
  }

  set {
    name  = "apps.cert-manager.email"
    value = linode_domain.apldomain.soa_email
  }


  values = [
    file("values.yaml")
  ]
}