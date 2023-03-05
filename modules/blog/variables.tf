variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}
variable "ami_filter" {
    description = "This contains Name and Owner values for ami"

    type = object({
        name = string
        owner= string
    })

    default = {
        name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
        owner = "979382823631"
    }
}
variable "environment"{
    description = "Development Environment"
    
    type = object ({
        name           = string
        network_prefix = string
    })

    default = {
        name = "dev"
        network_prefix = "10.0"
    }
}
variable "min_size" {
    description = "Minimum Size"

    default = 1
}
variable "max_size" {
    description = "Maximum Size"

    default = 2
}