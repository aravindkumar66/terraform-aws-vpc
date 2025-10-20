variable "vpc_cidr" {
    #default       = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {
    default = true
}

variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "common_tags" {
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "aws_subnet" {
    default = {}
}

variable "subnet_public_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.public_subnet_cidrs) == 2
      error_message = "please pass 2 valid public subnet cidr values mandatory"
    }
}

variable "subnet_private_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.private_subnet_cidrs) == 2
      error_message = "please pass 2 valid private subnet cidr values mandatory"
    }
}

variable "subnet_database_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
      condition = length(var.database_subnet_cidrs) == 2
      error_message = "please pass 2 valid database subnet cidr values mandatory"
    }
}

variable "aws_db_subnet_group_tags" {
    default = {}
}

variable "nat_gateway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "vpc_peering_tags" {
    default = {}
}

variable "peering_connection" {
    default = {}
}

variable "is_peering_required" {
    default = true
}