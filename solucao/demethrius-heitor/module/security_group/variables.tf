variable sg_name {
    description = "Nome do Security Group"
    type = string
    default = "desafio-devops-02-sg"
}

variable "environment" {
  description = "Ambiente (dev, prod)"
  type        = string
  default     = "dev"
}