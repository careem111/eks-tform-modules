variable "cluster_name" {
  type = string
}

variable "cluster_role_arn" {
  type = string
}

variable "node_role_arn" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "kubernetes_version" {
  type    = string
  default = "1.29"
}

variable "custom_ami_id" {
  type = string
}

variable "instance_type" {
  type    = string
  default = "t3.medium"
}
