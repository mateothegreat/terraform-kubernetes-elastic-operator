variable "operator_version" {

    type = string
    description = "elastic operator version"
    default = "1.2.1"

}

variable "server" {

    type = string
    description = "kubernetes api url"

}

variable "token" {

    type = string
    description = "kubernetes api token"

}
