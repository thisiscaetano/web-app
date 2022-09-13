variable "region" {
  description = "Define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the applicarion"
  default     = "jenkins"
}

variable "env" {
  description = "Environment of the application"
  default     = "dev"
}

variable "ami" {
  description = "AWS ami to be used"
  default     = "ami-052efd3df9dad4825"
}

variable "instance_type" {
  description = "AWS Instance type define hardware configuration of the machine "
  default     = "r3.2xlarge"
}

variable "repo" {
  description = "Repository of the applicarion"
  default     = "gitlab"
}
