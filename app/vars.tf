variable "projectName" {
  default = "fiap-app"
}

variable "cloudWatchGroupName" {
  type        = string
  default     = "fiapapp"
  description = "description"
}


variable "clusterName" {
  default = "fiap-cluster"
}

variable "regionDefault" {
  default = "us-east-1"
}

variable "instanceClass" {
  default = "db.t3.micro"
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
  default = "vpc-fiap-app"
}

variable "vpcCIDR" {
  default = "100.10.0.0/16"
}

variable "AWSAccount" {
  default = "590184082918"
}

variable "ecsTaskExecutionRole" {
  type        = string
  default     = "arn:aws:iam::590184082918:role/LabRole"
  description = "execution role arn"
}


variable "arn" {
  type        = string
  default     = ""
  description = "description"
}

variable "rdsUser" {
  default = "fiap"
}

variable "rdsPass" {
  default = "segredo1"
}

variable "dbName" {
  type        = string
  default     = "fiap"
  description = "RDS database name"
}

variable "tags" {
  type = map(string)
  default = {
    app         = "fiapApp",
    environemnt = "dev"
  }
}