variable "instance_template" {
  type        = string
  description = "Set aws instance type"
  default     = "g1-small"
}

variable "region" {
  type    = string
  default = "europe-west4"
}

variable "zone" {
  type    = string
  default = "europe-west4-a"
}
