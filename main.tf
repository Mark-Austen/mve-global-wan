// MVE location 1 - Global Switch Sydney
// MVE location 1 Internet VXC - Global Switch Sydney
// MVE location 1 name - SYD1

data "megaport_location" "location_1" {
  name = var.megaport_location_1
}

data "megaport_partner" "internet_location_1" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_1.id
}

resource "megaport_mve" "mve_location_1" {
  product_name         = var.megaport_mve_location_1_name
  location_id          = data.megaport_location.location_1.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_syd1" {
  product_name         = var.megaport_internet_location_1_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_1.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 2 - Equinix SY1
// MVE location 2 Internet VXC - NextDC S1
// MVE location 2 name - SYD2

data "megaport_location" "location_2" {
  name = var.megaport_location_2
}

data "megaport_location" "location_102" {
  name = var.megaport_location_102
}

data "megaport_partner" "internet_location_102" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_102.id
}

resource "megaport_mve" "mve_location_2" {
  product_name         = var.megaport_mve_location_2_name
  location_id          = data.megaport_location.location_2.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_syd2" {
  product_name         = var.megaport_internet_location_102_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_2.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_102.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 3 - Equinix SG1
// MVE location 3 Internet VXC - Equinix SG2
// MVE location 3 name - SIN1

data "megaport_location" "location_3" {
  name = var.megaport_location_3
}

data "megaport_location" "location_103" {
  name = var.megaport_location_103
}

data "megaport_partner" "internet_location_103" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_103.id
}

resource "megaport_mve" "mve_location_3" {
  product_name         = var.megaport_mve_location_3_name
  location_id          = data.megaport_location.location_3.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_sin1" {
  product_name         = var.megaport_internet_location_103_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_3.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_103.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 4 - Digital Realty SIN10
// MVE location 4 Internet VXC - Global Switch Singapore - Tai Seng
// MVE location 4 name - SIN2

data "megaport_location" "location_4" {
  name = var.megaport_location_4
}

data "megaport_location" "location_104" {
  name = var.megaport_location_104
}

data "megaport_partner" "internet_location_104" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_104.id
}

resource "megaport_mve" "mve_location_4" {
  product_name         = var.megaport_mve_location_4_name
  location_id          = data.megaport_location.location_4.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_sin2" {
  product_name         = var.megaport_internet_location_104_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_4.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_104.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 5 - Equinix HK1
// MVE location 5 Internet VXC - Equinix HK1
// MVE location 5 name - HKG1

data "megaport_location" "location_5" {
  name = var.megaport_location_5
}

data "megaport_partner" "internet_location_5" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_5.id
}

resource "megaport_mve" "mve_location_5" {
  product_name         = var.megaport_mve_location_5_name
  location_id          = data.megaport_location.location_5.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_hkg1" {
  product_name         = var.megaport_internet_location_5_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_5.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_5.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 6 - HKT SkyExchange (TKOIE)
// MVE location 6 Internet VXC - HKT SkyExchange (TKOIE)
// MVE location 6 name - HKG2

data "megaport_location" "location_6" {
  name = var.megaport_location_6
}

data "megaport_partner" "internet_location_6" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_6.id
}

resource "megaport_mve" "mve_location_6" {
  product_name         = var.megaport_mve_location_6_name
  location_id          = data.megaport_location.location_6.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_hkg2" {
  product_name         = var.megaport_internet_location_6_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_6.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_6.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 7 - Equinix FR1
// MVE location 7 Internet VXC - Equinix FR1
// MVE location 7 name - FRA1

data "megaport_location" "location_7" {
  name = var.megaport_location_7
}

data "megaport_partner" "internet_location_7" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_7.id
}

resource "megaport_mve" "mve_location_7" {
  product_name         = var.megaport_mve_location_7_name
  location_id          = data.megaport_location.location_7.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_fra1" {
  product_name         = var.megaport_internet_location_7_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_7.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_7.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 8 - Interxion FRA6
// MVE location 8 Internet VXC - Interxion FRA6
// MVE location 8 name - FRA2

data "megaport_location" "location_8" {
  name = var.megaport_location_8
}

data "megaport_partner" "internet_location_8" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_8.id
}

resource "megaport_mve" "mve_location_8" {
  product_name         = var.megaport_mve_location_8_name
  location_id          = data.megaport_location.location_8.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_fra2" {
  product_name         = var.megaport_internet_location_8_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_8.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_8.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 9 - Digital Realty DAL1
// MVE location 9 Internet VXC - Digital Realty DAL1
// MVE location 9 name - DAL1

data "megaport_location" "location_9" {
  name = var.megaport_location_9
}

data "megaport_partner" "internet_location_9" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_9.id
}

resource "megaport_mve" "mve_location_9" {
  product_name         = var.megaport_mve_location_9_name
  location_id          = data.megaport_location.location_9.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_dal1" {
  product_name         = var.megaport_internet_location_9_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_9.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_9.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE location 10 - Cologix DAL2
// MVE location 10 Internet VXC - Equinix DA1
// MVE location 10 name - DAL2

data "megaport_location" "location_10" {
  name = var.megaport_location_10
}

data "megaport_location" "location_110" {
  name = var.megaport_location_110
}

data "megaport_partner" "internet_location_110" {
  connect_type  = "TRANSIT"
  company_name  = "Networks"
  product_name  = "Megaport Internet"
  location_id   = data.megaport_location.location_110.id
}

resource "megaport_mve" "mve_location_10" {
  product_name         = var.megaport_mve_location_10_name
  location_id          = data.megaport_location.location_10.id
  contract_term_months = 1

   vnics = [
    {
      description = "vnic0"
    },
  ]

  vendor_config = {
    vendor       = var.mve_vendor
    product_size = var.mve_size_1
    image_id     = var.mve_image_id
    ssh_public_key = var.rsa_pub_key
  }
}

resource "megaport_vxc" "transit_vxc_dal2" {
  product_name         = var.megaport_internet_location_110_name
  rate_limit           = 1000
  contract_term_months = 1
  
  a_end = {
    requested_product_uid = megaport_mve.mve_location_10.product_uid
  }
  
  b_end = {
    requested_product_uid = data.megaport_partner.internet_location_110.product_uid
  }
  
  b_end_partner_config = {
    partner = "transit"
  }
}

// MVE to MVE Private VXCs
// SYD1 to SIN1

resource "megaport_vxc" "location_1_to_location_3_vxc" {
  product_name         = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_3_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
    inner_vlan            = 101
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_3.product_uid
    inner_vlan            = 101
    vnic_index            = 0
  }
}

// SYD2 to SIN2

resource "megaport_vxc" "location_2_to_location_4_vxc" {
  product_name         = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_4_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_2.product_uid
    inner_vlan            = 102
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_4.product_uid
    inner_vlan            = 102
    vnic_index            = 0
  }
}

// SYD1 to HKG1

resource "megaport_vxc" "location_1_to_location_5_vxc" {
  product_name         = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_5_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
    inner_vlan            = 103
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_5.product_uid
    inner_vlan            = 103
    vnic_index            = 0
  }
}

// SYD2 to HKG2

resource "megaport_vxc" "location_2_to_location_6_vxc" {
  product_name         = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_6_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
    inner_vlan            = 104
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_5.product_uid
    inner_vlan            = 104
    vnic_index            = 0
  }
}

// SYD1 to FRA1

resource "megaport_vxc" "location_1_to_location_7_vxc" {
  product_name         = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_7_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
    inner_vlan            = 105
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_7.product_uid
    inner_vlan            = 105
    vnic_index            = 0
  }
}

// SYD2 to FRA2

resource "megaport_vxc" "location_2_to_location_8_vxc" {
  product_name         = "${var.megaport_mve_location_2_name} to ${var.megaport_mve_location_8_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_2.product_uid
    inner_vlan            = 106
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_8.product_uid
    inner_vlan            = 106
    vnic_index            = 0
  }
}

// SYD1 to DAL1

resource "megaport_vxc" "location_1_to_location_9_vxc" {
  product_name         = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_9_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
    inner_vlan            = 107
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_9.product_uid
    inner_vlan            = 107
    vnic_index            = 0
  }
}

// SYD2 to DAL2

resource "megaport_vxc" "location_1_to_location_10_vxc" {
  product_name         = "${var.megaport_mve_location_1_name} to ${var.megaport_mve_location_10_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_1.product_uid
    inner_vlan            = 108
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_10.product_uid
    inner_vlan            = 108
    vnic_index            = 0
  }
}

// SIN1 to HKG1

resource "megaport_vxc" "location_3_to_location_5_vxc" {
  product_name         = "${var.megaport_mve_location_3_name} to ${var.megaport_mve_location_5_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_3.product_uid
    inner_vlan            = 109
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_5.product_uid
    inner_vlan            = 109
    vnic_index            = 0
  }
}

// SIN2 to HKG2

resource "megaport_vxc" "location_4_to_location_6_vxc" {
  product_name         = "${var.megaport_mve_location_4_name} to ${var.megaport_mve_location_6_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_4.product_uid
    inner_vlan            = 110
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_6.product_uid
    inner_vlan            = 110
    vnic_index            = 0
  }
}

// SIN1 to FRA1

resource "megaport_vxc" "location_3_to_location_7_vxc" {
  product_name         = "${var.megaport_mve_location_3_name} to ${var.megaport_mve_location_7_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_3.product_uid
    inner_vlan            = 111
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_7.product_uid
    inner_vlan            = 111
    vnic_index            = 0
  }
}

// SIN2 to FRA2

resource "megaport_vxc" "location_4_to_location_8_vxc" {
  product_name         = "${var.megaport_mve_location_4_name} to ${var.megaport_mve_location_8_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_4.product_uid
    inner_vlan            = 112
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_8.product_uid
    inner_vlan            = 112
    vnic_index            = 0
  }
}

// SIN1 to DAL1

resource "megaport_vxc" "location_3_to_location_9_vxc" {
  product_name         = "${var.megaport_mve_location_3_name} to ${var.megaport_mve_location_9_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_3.product_uid
    inner_vlan            = 113
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_9.product_uid
    inner_vlan            = 113
    vnic_index            = 0
  }
}

// SIN2 to DAL2

resource "megaport_vxc" "location_4_to_location_10_vxc" {
  product_name         = "${var.megaport_mve_location_4_name} to ${var.megaport_mve_location_10_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_4.product_uid
    inner_vlan            = 114
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_10.product_uid
    inner_vlan            = 114
    vnic_index            = 0
  }
}

// HKG1 to FRA1

resource "megaport_vxc" "location_5_to_location_7_vxc" {
  product_name         = "${var.megaport_mve_location_5_name} to ${var.megaport_mve_location_7_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_5.product_uid
    inner_vlan            = 115
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_7.product_uid
    inner_vlan            = 115
    vnic_index            = 0
  }
}

// HKG2 to FRA2

resource "megaport_vxc" "location_6_to_location_8_vxc" {
  product_name         = "${var.megaport_mve_location_6_name} to ${var.megaport_mve_location_8_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_6.product_uid
    inner_vlan            = 116
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_8.product_uid
    inner_vlan            = 116
    vnic_index            = 0
  }
}

// HKG1 to DAL1

resource "megaport_vxc" "location_5_to_location_9_vxc" {
  product_name         = "${var.megaport_mve_location_5_name} to ${var.megaport_mve_location_9_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_5.product_uid
    inner_vlan            = 117
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_9.product_uid
    inner_vlan            = 117
    vnic_index            = 0
  }
}

// HKG2 to DAL2

resource "megaport_vxc" "location_6_to_location_10_vxc" {
  product_name         = "${var.megaport_mve_location_6_name} to ${var.megaport_mve_location_10_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_6.product_uid
    inner_vlan            = 118
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_10.product_uid
    inner_vlan            = 118
    vnic_index            = 0
  }
}

// FRA1 to DAL1

resource "megaport_vxc" "location_7_to_location_9_vxc" {
  product_name         = "${var.megaport_mve_location_7_name} to ${var.megaport_mve_location_9_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_7.product_uid
    inner_vlan            = 119
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_9.product_uid
    inner_vlan            = 119
    vnic_index            = 0
  }
}

// FRA2 to DAL2

resource "megaport_vxc" "location_8_to_location_10_vxc" {
  product_name         = "${var.megaport_mve_location_8_name} to ${var.megaport_mve_location_10_name}"
  rate_limit           = 1000
  contract_term_months = 1

  a_end = {
    requested_product_uid = megaport_mve.mve_location_8.product_uid
    inner_vlan            = 119
    vnic_index            = 0
  }

  b_end = {
    requested_product_uid = megaport_mve.mve_location_10.product_uid
    inner_vlan            = 119
    vnic_index            = 0
  }
}
