variable "deploy_profile" {
  description = "Name of profile in ~/.aws/credentials file which should be used for deploying this infra."
}

variable "aws_region" {
  description = "Region this stack should be applied to."
  default     = "us-east-1"
}

variable "env_name" {
  description = "Name of the environment (i.e. prod)."
  default     = "playground"
}

variable "nomad_cluster_name" {
  description = "What to name the Nomad cluster and all of its associated resources."
  default     = "nomad-example"
}

variable "consul_cluster_name" {
  description = "What to name the Consul cluster and all of its associated resources."
  default     = "consul-example"
}

variable "ami_servers" {
  description = "AMI for all the nomad server instances."
  default     = "ami-a23feadf"
}

variable "ami_clients" {
  description = "AMI for all the nomad client instances."
  default     = "ami-e5e34798"
}

variable "nomad_server_scaling_cfg" {
  description = "Scaling configuration for the nomad servers."
  type        = "map"

  default = {
    "min"              = 3
    "max"              = 3
    "desired_capacity" = 3
  }
}

variable "nomad_num_clients" {
  description = "The number of Nomad client nodes to deploy. You can deploy as many as you need to run your jobs."
  default     = 3
}

variable "instance_type_server" {
  description = "The instance type for all nomad and consul server nodes."
  default     = "t2.micro"
}

variable "instance_type_client" {
  description = "The instance type for all nomad client nodes."
  default     = "t2.small"
}
