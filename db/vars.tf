variable "dbName" {
  type        = string
  default     = "fiap"
  description = "RDS database name"
}

variable "projectName" {
  default = "fiap-db"
}

variable "clusterName" {
  default = "fiap-cluster"
}

variable "regionDefault" {
  default = "us-east-1"
}

variable "engineRds" {
  default = "mariadb"
}

variable "engineRdsVersion" {
  default = "10.11"
}

variable "rdsUser" {
  default = "fiap"
}

variable "rdsPass" {
  default = "segredo1"
}

variable "instanceClass" {
  default = "db.t3.micro"
}

variable "storageType" {
  default = "gp3"
}

variable "minStorage" {
  default = "20"
}

variable "maxStorage" {
  default = "30"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "Public Subnet CIDR values"
  default     = ["10.0.15.0/24", "10.0.16.0/24"]
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "Private Subnet CIDR values"
  default     = ["10.0.30.0/24", "10.0.40.0/24"]
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "vpcId" {
  default = "vpc-rds" # example: vpc-abcdef1
}

variable "vpcCIDR" {
  default = "100.10.0.0/16" # example: 10.10.0.0/16
}

variable "AWSAccount" {
  default = "<inserir-id-aws-account>" # example: 123456789
}

variable "tags" {
  type = map(string)
  default = {
    app         = "fiap-rds",
    environemnt = "dev"
  }
}