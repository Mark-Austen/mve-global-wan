variable "rsa_pub_key" {
  type        = string
  default     = "<public ssh key>"
}

variable "mve_image_id" {
  description = "Megaport MVE image ID."
  default     = 42
}

variable "mve_size_1" {
  description = "Megaport MVE 8vCPU."
  default     = "LARGE"
}

variable "mve_size_2" {
  description = "Megaport MVE 4vCPU"
  default     = "MEDIUM"
}

variable "mve_vendor" {
  description = "Megaport MVE network vendor."
  default     = "CISCO"
}

variable "megaport_location_1" {
  description = "Megaport Data Centre location 1."
  default     = "NextDC S1"
}

variable "megaport_mve_location_1_name" {
  description = "Megaport MVE location 1 name."
  default     = "SYD1"
}

variable "megaport_location_2" {
  description = "Megaport Data Centre location 2."
  default     = "Equinix SY1"
}

variable "megaport_mve_location_2_name" {
  description = "Megaport MVE location 2 name."
  default     = "SYD2"
}

variable "megaport_location_3" {
  description = "Megaport Data Centre location 3."
  default     = "Equinix SG2"
}

variable "megaport_mve_location_3_name" {
  description = "Megaport MVE location 3 name."
  default     = "SIN1"
}

variable "megaport_location_4" {
  description = "Megaport Data Centre location 4."
  default     = "Global Switch Singapore - Tai Seng"
}

variable "megaport_mve_location_4_name" {
  description = "Megaport MVE location 1 name."
  default     = "SIN2"
}

variable "megaport_location_5" {
  description = "Megaport Data Centre location 5."
  default     = "Equinix HK1"
}

variable "megaport_mve_location_5_name" {
  description = "Megaport MVE location 5 name."
  default     = "HKG1"
}

variable "megaport_location_6" {
  description = "Megaport Data Centre location 6."
  default     = "Mega-iAdvantage"
}

variable "megaport_mve_location_6_name" {
  description = "Megaport MVE location 6 name."
  default     = "HKG2"
}

variable "megaport_location_7" {
  description = "Megaport Data Centre location 7."
  default     = "Equinix FR5"
}

variable "megaport_mve_location_7_name" {
  description = "Megaport MVE location 7 name."
  default     = "FRA1"
}

variable "megaport_location_8" {
  description = "Megaport Data Centre location 8."
  default     = "Interxion FRA6"
}

variable "megaport_mve_location_8_name" {
  description = "Megaport MVE location 8 name."
  default     = "FRA2"
}

variable "megaport_location_9" {
  description = "Megaport Data Centre location 9."
  default     = "Equinix DA1"
}

variable "megaport_mve_location_9_name" {
  description = "Megaport MVE location 9 name."
  default     = "DAL1"
}

variable "megaport_location_10" {
  description = "Megaport Data Centre location 10."
  default     = "Digital Realty DAL1"
}

variable "megaport_mve_location_10_name" {
  description = "Megaport MVE location 10 name."
  default     = "DAL2"
}
