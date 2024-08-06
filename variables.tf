variable "rsa_pub_key" {
  type        = string
  default     = "<ssh public key>"
}

variable "mve_vendor" {
  description = "Megaport MVE network vendor"
  default     = "cisco"
}

// Image ID may change - use the API to check image ID

variable "mve_image_id" {
  description = "Megaport MVE image ID - 69 - Cisco C8Kv 17.14.01.a"
  default     = 69
}

variable "mve_size_1" {
  description = "Megaport MVE 2vCPU"
  default     = "SMALL"
}

variable "mve_size_2" {
  description = "Megaport MVE 4vCPU"
  default     = "MEDIUM"
}

variable "mve_size_3" {
  description = "Megaport MVE 8vCPU"
  default     = "LARGE"
}

variable "megaport_location_1" {
  description = "Megaport Data Centre location 1"
  default     = "Global Switch Sydney West"
}

variable "megaport_mve_location_1_name" {
  description = "Megaport MVE location 1 name"
  default     = "SYD1"
}

variable "megaport_location_2" {
  description = "Megaport Data Centre location 2"
  default     = "Equinix SY1"
}

variable "megaport_mve_location_2_name" {
  description = "Megaport MVE location 2 name"
  default     = "SYD2"
}

variable "megaport_location_102" {
  description = "Megaport Data Centre location 102"
  default     = "NextDC S1"
}

variable "megaport_internet_location_1_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet SYD1"
}

variable "megaport_internet_location_102_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet SYD2"
}

variable "megaport_location_3" {
  description = "Megaport Data Centre location 3"
  default     = "Equinix SG1"
}

variable "megaport_mve_location_3_name" {
  description = "Megaport MVE location 3 name"
  default     = "SIN1"
}

variable "megaport_location_103" {
  description = "Megaport Data Centre location 103"
  default     = "Equinix SG2"
}

variable "megaport_internet_location_103_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet SIN1"
}

variable "megaport_location_4" {
  description = "Megaport Data Centre location 4"
  default     = "Digital Realty SIN10"
}

variable "megaport_location_104" {
  description = "Megaport Data Centre location 104"
  default     = "Global Switch Singapore - Tai Seng"
}

variable "megaport_mve_location_4_name" {
  description = "Megaport MVE location 4 name"
  default     = "SIN2"
}

variable "megaport_internet_location_104_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet SIN2"
}

variable "megaport_location_5" {
  description = "Megaport Data Centre location 5"
  default     = "Equinix HK1"
}

variable "megaport_mve_location_5_name" {
  description = "Megaport MVE location 5 name"
  default     = "HKG1"
}

variable "megaport_internet_location_5_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet HKG1"
}

variable "megaport_location_6" {
  description = "Megaport Data Centre location 6"
  default     = "HKT SkyExchange (TKOIE)"
}

variable "megaport_mve_location_6_name" {
  description = "Megaport MVE location 6 name"
  default     = "HKG2"
}

variable "megaport_internet_location_6_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet HKG2"
}

variable "megaport_location_7" {
  description = "Megaport Data Centre location 7"
  default     = "Equinix FR5"
}

variable "megaport_mve_location_7_name" {
  description = "Megaport MVE location 7 name"
  default     = "FRA1"
}

variable "megaport_internet_location_7_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet FRA1"
}

variable "megaport_location_8" {
  description = "Megaport Data Centre location 8"
  default     = "Interxion FRA6"
}

variable "megaport_mve_location_8_name" {
  description = "Megaport MVE location 8 name"
  default     = "FRA2"
}

variable "megaport_internet_location_8_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet FRA2"
}

variable "megaport_location_9" {
  description = "Megaport Data Centre location 9"
  default     = "Digital Realty DAL1"
}

variable "megaport_mve_location_9_name" {
  description = "Megaport MVE location 9 name"
  default     = "DAL1"
}

variable "megaport_internet_location_9_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet DAL1"
}

variable "megaport_location_10" {
  description = "Megaport Data Centre location 10"
  default     = "Cologix DAL2"
}

variable "megaport_mve_location_10_name" {
  description = "Megaport MVE location 10 name"
  default     = "DAL2"
}

variable "megaport_location_110" {
  description = "Megaport Data Centre location 110"
  default     = "Equinix DA1"
}

variable "megaport_internet_location_110_name" {
  description = "Megaport Internet VXC name"
  default     = "Megaport Internet DAL2"
}
