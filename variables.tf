variable "host" {

    type        = string
    description = "kuberetes api url"

}

variable "token" {

    type        = string
    description = "kubernetes api token"

}

variable "operator_version" {

    type = string
    description = "elastic operator version"
    default = "1.2.1"

}
