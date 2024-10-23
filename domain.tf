resource "linode_domain" "apldomain" {
    type = "master"
    domain = var.domain
    soa_email = var.soaemail
    tags = ["app", "ApplicationPlatform"]
    ttl_sec = 60
    refresh_sec = 30
}