variable "tenancy_ocid" {}
variable "region" {}
variable "compartment_ocid" {}
variable "ssh_pub_key" {}
variable "bastion_shape" {}
variable "bastion_image" {}
variable "bastion_ocpus" { default = 1 }
variable "bastion_ram" { default = 16 }
variable "headnode_shape" {}
variable "headnode_image" {}
variable "headnode_ocpus" { default = 1 }
variable "headnode_ram" { default = 16 }
variable "bastion_boot_size" { default = 50 }
variable "hn_boot_size" { default = 120 }
variable "hn_data_size" { default = 1024 }
variable "hn_work_size" { default = 1024 }
variable "use_hp_vol" { default = true }
variable "randomise_ad" { default = true }
variable "ad" { default = "" }
variable "name_prefix" { default = "" }
variable "sp3_branch" { default = "" }
variable "env_name" { default = "sp3" }
variable "deploy_test" { default = false }
variable "deploy_1k" { default = false }
variable "show_testing_others" { default = false }
variable "specify_prefix" { default = false }
variable "worker_shape" { default = "" }
variable "worker_image" { default = "" }
variable "worker_ocpus" { default = 1 }
variable "worker_ram" { default = 16 }
variable "worker_min" { default = 1 }
variable "worker_max" { default = 1 }
variable "worker_timeout" { default = 30 }
variable "worker_max_create" { default = 4 }
variable "worker_use_scratch" { default = false }
variable "create_child_comp" { default = true }
variable "install_certs" { default = true }
variable "create_dns" { default = true }
variable "custom_worker_img" { default = "" }
variable "select_cust_worker_img" { default = false }

locals {
  compute_flexible_shapes   = ["VM.Standard.E3.Flex"]
  Sp3_deploy_id             = random_string.deploy_id.result
  Sp3_gitrepo_secret_id     = "ocid1.vaultsecret.oc1.uk-london-1.amaaaaaahe4ejdia3ejrsbqkv6iz2ipwngjmteeduitufuu7u35sgxrx7wna"
  Gpas_world_ssl_secret_id  = "ocid1.vaultsecret.oc1.uk-london-1.amaaaaaahe4ejdiaepnu52uznkweta4bkiqqdptincfh3zw5uubmfgxynxdq"
  Gpas_world_priv_secret_id = "ocid1.vaultsecret.oc1.uk-london-1.amaaaaaahe4ejdiap77sz5c6bx4eiremliirileqdpzs4neizp5buxprsu3a"
  Gpas_world_dns_zone_id    = "ocid1.dns-zone.oc1..0543d2fb4ca04efebe6d9f2d97e63c9b"
  Sp3dev_sandbox_cid        = "ocid1.compartment.oc1..aaaaaaaao4kpjckz2pjmlict2ssrnx45ims7ttvxghlluo2tcwv6pgfdlepq"
  Sp3_dns_suffix            = "dev.gpas.world"
}
