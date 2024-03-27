data "megaport_location" "location_1" {
  name = var.megaport_location_1
}

data "megaport_location" "location_2" {
  name = var.megaport_location_2
}

resource "megaport_mve" "mve_location_1" {
  location_id = data.megaport_location.location_1.id
  mve_name    = var.megaport_mve_location_1_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_1
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_1_transit_zone" {
  metro                    = "Sydney"
  requested_diversity_zone = "red"
}

resource "megaport_vxc" "transit_location_1_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_1.id
    vnic_index     = megaport_mve.mve_location_1.vnic.0.index
    requested_vlan = megaport_mve.mve_location_1.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_1_transit_zone.id
  }
}

resource "megaport_mve" "mve_location_2" {
  location_id = data.megaport_location.location_2.id
  mve_name    = var.megaport_mve_location_2_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_1
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_2_transit_zone" {
  metro                    = "Sydney"
  requested_diversity_zone = "blue"
}

resource "megaport_vxc" "transit_location_2_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_2.id
    vnic_index     = megaport_mve.mve_location_2.vnic.0.index
    requested_vlan = megaport_mve.mve_location_2.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_2_transit_zone.id
  }
}

data "megaport_location" "location_3" {
  name = var.megaport_location_3
}

data "megaport_location" "location_4" {
  name = var.megaport_location_4
}

resource "megaport_mve" "mve_location_3" {
  location_id = data.megaport_location.location_3.id
  mve_name    = var.megaport_mve_location_3_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_1
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_3_transit_zone" {
  metro                    = "Singapore"
  requested_diversity_zone = "red"
}

resource "megaport_vxc" "transit_location_3_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_3.id
    vnic_index     = megaport_mve.mve_location_3.vnic.0.index
    requested_vlan = megaport_mve.mve_location_3.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_3_transit_zone.id
  }
}

resource "megaport_mve" "mve_location_4" {
  location_id = data.megaport_location.location_4.id
  mve_name    = var.megaport_mve_location_4_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_1
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_4_transit_zone" {
  metro                    = "Singapore"
  requested_diversity_zone = "blue"
}

resource "megaport_vxc" "transit_location_4_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_4.id
    vnic_index     = megaport_mve.mve_location_4.vnic.0.index
    requested_vlan = megaport_mve.mve_location_4.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_4_transit_zone.id
  }
}

data "megaport_location" "location_5" {
  name = var.megaport_location_5
}

data "megaport_location" "location_6" {
  name = var.megaport_location_6
}

resource "megaport_mve" "mve_location_5" {
  location_id = data.megaport_location.location_5.id
  mve_name    = var.megaport_mve_location_5_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_2
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_5_transit_zone" {
  metro                    = "Hong Kong"
  requested_diversity_zone = "blue"
}

resource "megaport_vxc" "transit_location_5_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_5.id
    vnic_index     = megaport_mve.mve_location_5.vnic.0.index
    requested_vlan = megaport_mve.mve_location_5.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_5_transit_zone.id
  }
}

resource "megaport_mve" "mve_location_6" {
  location_id = data.megaport_location.location_6.id
  mve_name    = var.megaport_mve_location_6_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_2
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_6_transit_zone" {
  metro                    = "Hong Kong"
  requested_diversity_zone = "red"
}

resource "megaport_vxc" "transit_location_6_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_6.id
    vnic_index     = megaport_mve.mve_location_6.vnic.0.index
    requested_vlan = megaport_mve.mve_location_6.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_6_transit_zone.id
  }
}

data "megaport_location" "location_7" {
  name = var.megaport_location_7
}

data "megaport_location" "location_8" {
  name = var.megaport_location_8
}

resource "megaport_mve" "mve_location_7" {
  location_id = data.megaport_location.location_7.id
  mve_name    = var.megaport_mve_location_7_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_2
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_7_transit_zone" {
  metro                    = "Frankfurt"
  requested_diversity_zone = "blue"
}

resource "megaport_vxc" "transit_location_7_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_7.id
    vnic_index     = megaport_mve.mve_location_7.vnic.0.index
    requested_vlan = megaport_mve.mve_location_7.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_7_transit_zone.id
  }
}

resource "megaport_mve" "mve_location_8" {
  location_id = data.megaport_location.location_8.id
  mve_name    = var.megaport_mve_location_8_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_2
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_8_transit_zone" {
  metro                    = "Frankfurt"
  requested_diversity_zone = "red"
}

resource "megaport_vxc" "transit_location_8_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_8.id
    vnic_index     = megaport_mve.mve_location_8.vnic.0.index
    requested_vlan = megaport_mve.mve_location_8.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_8_transit_zone.id
  }
}

data "megaport_location" "location_9" {
  name = var.megaport_location_9
}

data "megaport_location" "location_10" {
  name = var.megaport_location_10
}

resource "megaport_mve" "mve_location_9" {
  location_id = data.megaport_location.location_9.id
  mve_name    = var.megaport_mve_location_9_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_2
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_9_transit_zone" {
  metro                    = "Dallas"
  requested_diversity_zone = "red"
}

resource "megaport_vxc" "transit_location_9_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_9.id
    vnic_index     = megaport_mve.mve_location_9.vnic.0.index
    requested_vlan = megaport_mve.mve_location_9.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_9_transit_zone.id
  }
}

resource "megaport_mve" "mve_location_10" {
  location_id = data.megaport_location.location_10.id
  mve_name    = var.megaport_mve_location_10_name
  image_id    = var.mve_image_id
  vendor      = var.mve_vendor
  size        = var.mve_size_2
  
  vendor_config = {
    "sshPublicKey"      = var.rsa_pub_key
  }

  vnic {
    description = "vnic0"
  }
}

data "megaport_internet" "location_10_transit_zone" {
  metro                    = "Dallas"
  requested_diversity_zone = "blue"
}

resource "megaport_vxc" "transit_location_10_transit_zone" {
  vxc_name   = "Internet"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_10.id
    vnic_index     = megaport_mve.mve_location_10.vnic.0.index
    requested_vlan = megaport_mve.mve_location_10.vnic.0.vlan
  }

  b_end {
    port_id = data.megaport_internet.location_10_transit_zone.id
  }
}

resource "megaport_vxc" "location_1_to_location_3_vxc" {
  vxc_name   = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_3_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_1.id
    vnic_index     = megaport_mve.mve_location_1.vnic.0.index
    inner_vlan     = 801
  }

  b_end {
    mve_id         = megaport_mve.mve_location_3.id
    vnic_index     = megaport_mve.mve_location_3.vnic.0.index
    inner_vlan     = 801
  }
}

resource "megaport_vxc" "location_2_to_location_4_vxc" {
  vxc_name   = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_4_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_2.id
    vnic_index     = megaport_mve.mve_location_2.vnic.0.index
    inner_vlan     = 802
  }

  b_end {
    mve_id         = megaport_mve.mve_location_4.id
    vnic_index     = megaport_mve.mve_location_4.vnic.0.index
    inner_vlan     = 802
  }
}

resource "megaport_vxc" "location_1_to_location_5_vxc" {
  vxc_name   = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_5_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_1.id
    vnic_index     = megaport_mve.mve_location_1.vnic.0.index
    inner_vlan     = 811
  }

  b_end {
    mve_id         = megaport_mve.mve_location_5.id
    vnic_index     = megaport_mve.mve_location_5.vnic.0.index
    inner_vlan     = 811
  }
}

resource "megaport_vxc" "location_2_to_location_6_vxc" {
  vxc_name   = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_6_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_2.id
    vnic_index     = megaport_mve.mve_location_2.vnic.0.index
    inner_vlan     = 812
  }

  b_end {
    mve_id         = megaport_mve.mve_location_6.id
    vnic_index     = megaport_mve.mve_location_6.vnic.0.index
    inner_vlan     = 812
  }
}

resource "megaport_vxc" "location_3_to_location_5_vxc" {
  vxc_name   = "${var.megaport_mve_location_3_name} to ${var.megaport_mve_location_5_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_3.id
    vnic_index     = megaport_mve.mve_location_3.vnic.0.index
    inner_vlan     = 821
  }

  b_end {
    mve_id         = megaport_mve.mve_location_5.id
    vnic_index     = megaport_mve.mve_location_5.vnic.0.index
    inner_vlan     = 821
  }
}

resource "megaport_vxc" "location_4_to_location_6_vxc" {
  vxc_name   = "${var.megaport_mve_location_4_name} to ${var.megaport_mve_location_6_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_4.id
    vnic_index     = megaport_mve.mve_location_4.vnic.0.index
    inner_vlan     = 822
  }

  b_end {
    mve_id         = megaport_mve.mve_location_6.id
    vnic_index     = megaport_mve.mve_location_6.vnic.0.index
    inner_vlan     = 822
  }
}

resource "megaport_vxc" "location_1_to_location_7_vxc" {
  vxc_name   = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_7_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_1.id
    vnic_index     = megaport_mve.mve_location_1.vnic.0.index
    inner_vlan     = 831
  }

  b_end {
    mve_id         = megaport_mve.mve_location_7.id
    vnic_index     = megaport_mve.mve_location_7.vnic.0.index
    inner_vlan     = 831
  }
}

resource "megaport_vxc" "location_2_to_location_8_vxc" {
  vxc_name   = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_8_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_2.id
    vnic_index     = megaport_mve.mve_location_2.vnic.0.index
    inner_vlan     = 832
  }

  b_end {
    mve_id         = megaport_mve.mve_location_8.id
    vnic_index     = megaport_mve.mve_location_8.vnic.0.index
    inner_vlan     = 832
  }
}

resource "megaport_vxc" "location_3_to_location_7_vxc" {
  vxc_name   = "${var.megaport_mve_location_3_name} to ${var.megaport_mve_location_7_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_3.id
    vnic_index     = megaport_mve.mve_location_3.vnic.0.index
    inner_vlan     = 841
  }

  b_end {
    mve_id         = megaport_mve.mve_location_7.id
    vnic_index     = megaport_mve.mve_location_7.vnic.0.index
    inner_vlan     = 841
  }
}

resource "megaport_vxc" "location_4_to_location_8_vxc" {
  vxc_name   = "${var.megaport_mve_location_4_name} to ${var.megaport_mve_location_8_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_4.id
    vnic_index     = megaport_mve.mve_location_4.vnic.0.index
    inner_vlan     = 842
  }

  b_end {
    mve_id         = megaport_mve.mve_location_8.id
    vnic_index     = megaport_mve.mve_location_8.vnic.0.index
    inner_vlan     = 842
  }
}

resource "megaport_vxc" "location_1_to_location_9" {
  vxc_name   = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_9_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_1.id
    vnic_index     = megaport_mve.mve_location_1.vnic.0.index
    inner_vlan     = 851
  }

  b_end {
    mve_id         = megaport_mve.mve_location_9.id
    vnic_index     = megaport_mve.mve_location_9.vnic.0.index
    inner_vlan     = 851
  }
}

resource "megaport_vxc" "location_2_to_location_10_vxc" {
  vxc_name   = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_10_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_2.id
    vnic_index     = megaport_mve.mve_location_2.vnic.0.index
    inner_vlan     = 852
  }

  b_end {
    mve_id         = megaport_mve.mve_location_10.id
    vnic_index     = megaport_mve.mve_location_10.vnic.0.index
    inner_vlan     = 852
  }
}

resource "megaport_vxc" "location_3_to_location_9_vxc" {
  vxc_name   = "${var.megaport_mve_location_3_name} to ${var.megaport_mve_location_9_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_3.id
    vnic_index     = megaport_mve.mve_location_3.vnic.0.index
    inner_vlan     = 861
  }

  b_end {
    mve_id         = megaport_mve.mve_location_9.id
    vnic_index     = megaport_mve.mve_location_9.vnic.0.index
    inner_vlan     = 861
  }
}

resource "megaport_vxc" "location_4_to_location_10_vxc" {
  vxc_name   = "${var.megaport_mve_location_4_name} to ${var.megaport_mve_location_10_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_4.id
    vnic_index     = megaport_mve.mve_location_4.vnic.0.index
    inner_vlan     = 862
  }

  b_end {
    mve_id         = megaport_mve.mve_location_10.id
    vnic_index     = megaport_mve.mve_location_10.vnic.0.index
    inner_vlan     = 862
  }
}

resource "megaport_vxc" "location_5_to_location_7_vxc" {
  vxc_name   = "${var.megaport_mve_location_5_name} to ${var.megaport_mve_location_7_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_5.id
    vnic_index     = megaport_mve.mve_location_5.vnic.0.index
    inner_vlan     = 871
  }

  b_end {
    mve_id         = megaport_mve.mve_location_7.id
    vnic_index     = megaport_mve.mve_location_7.vnic.0.index
    inner_vlan     = 871
  }
}

resource "megaport_vxc" "location_6_to_location_8_vxc" {
  vxc_name   = "${var.megaport_mve_location_6_name} to ${var.megaport_mve_location_8_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_6.id
    vnic_index     = megaport_mve.mve_location_6.vnic.0.index
    inner_vlan     = 872
  }

  b_end {
    mve_id         = megaport_mve.mve_location_8.id
    vnic_index     = megaport_mve.mve_location_8.vnic.0.index
    inner_vlan     = 872
  }
}

resource "megaport_vxc" "location_9_to_location_7_vxc" {
  vxc_name   = "${var.megaport_mve_location_9_name} to ${var.megaport_mve_location_7_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_9.id
    vnic_index     = megaport_mve.mve_location_9.vnic.0.index
    inner_vlan     = 881
  }

  b_end {
    mve_id         = megaport_mve.mve_location_7.id
    vnic_index     = megaport_mve.mve_location_7.vnic.0.index
    inner_vlan     = 881
  }
}

resource "megaport_vxc" "location_10_to_location_8_vxc" {
  vxc_name   = "${var.megaport_mve_location_10_name} to ${var.megaport_mve_location_8_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_10.id
    vnic_index     = megaport_mve.mve_location_10.vnic.0.index
    inner_vlan     = 882
  }

  b_end {
    mve_id         = megaport_mve.mve_location_8.id
    vnic_index     = megaport_mve.mve_location_8.vnic.0.index
    inner_vlan     = 882
  }
}

resource "megaport_vxc" "location_9_to_location_5_vxc" {
  vxc_name   = "${var.megaport_mve_location_9_name} to ${var.megaport_mve_location_5_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_9.id
    vnic_index     = megaport_mve.mve_location_9.vnic.0.index
    inner_vlan     = 891
  }

  b_end {
    mve_id         = megaport_mve.mve_location_5.id
    vnic_index     = megaport_mve.mve_location_5.vnic.0.index
    inner_vlan     = 891
  }
}

resource "megaport_vxc" "location_10_to_location_6_vxc" {
  vxc_name   = "${var.megaport_mve_location_10_name} to ${var.megaport_mve_location_6_name}"
  rate_limit = 1000

  a_end {
    mve_id         = megaport_mve.mve_location_10.id
    vnic_index     = megaport_mve.mve_location_10.vnic.0.index
    inner_vlan     = 892
  }

  b_end {
    mve_id         = megaport_mve.mve_location_6.id
    vnic_index     = megaport_mve.mve_location_6.vnic.0.index
    inner_vlan     = 892
  }
}







