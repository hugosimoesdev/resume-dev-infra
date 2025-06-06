variable "vpc_id" {
  description = "ID da VPC onde o RDS será criado"
  type        = string
}

variable "subnet_ids" {
  description = "IDs das subnets para o DB subnet group"
  type        = list(string)
}

variable "db_name" {
  description = "Nome do banco de dados"
  type        = string
}

variable "db_username" {
  description = "Usuário do banco de dados"
  type        = string
}

variable "db_password" {
  description = "Senha do banco de dados"
  type        = string
  sensitive   = true
}

variable "db_instance_class" {
  description = "Classe da instância do RDS"
  type        = string
  default     = "db.t3.micro"
}

variable "publicly_accessible" {
  description = "Define se a instância RDS terá um endpoint público"
  type        = bool
  default     = false
}

variable "allocated_storage" {
  description = "Armazenamento alocado em GB"
  type        = number
  default     = 20
}

variable "skip_final_snapshot" {
  description = "Determina se um snapshot final será criado ao deletar a instância"
  type        = bool
  default     = false
}

variable "db_engine_version" {
  description = "Versão do engine do banco de dados"
  type        = string
  default     = "14.1"
}

variable "db_engine" {
  description = "Tipo de engine do banco de dados (ex: postgres, mysql, aurora-postgresql)"
  type        = string
  default     = "postgres"
}