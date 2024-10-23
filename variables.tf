variable "linode_token" {
  type      = string
  sensitive = true
  default = ""
}

variable "region" {
    default = "nl-ams"  
}

variable "k8s_version" {
    default = "1.30"  
    type = string
}

variable "domain" {
    default = ""  
}

variable "soaemail" {
    default = ""  
}