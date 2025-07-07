variable "project" {
    default = "roboshop"
}

variable "environment" {
    default = "dev"
}
variable "public_subnet_cidrs" {
    default = ["20.0.1.0/24", "20.0.2.0/24"]
}

variable "private_subnet_cidrs" {
    default = ["20.0.11.0/24", "20.0.12.0/24"]
}

variable "database_subnet_cidrs" {
    default = ["20.0.21.0/24", "20.0.22.0/24"]
}
