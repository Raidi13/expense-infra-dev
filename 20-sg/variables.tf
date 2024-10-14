variable "project_name" {
  default     = "expense"
}
variable "enivronment"{
    default   = "dev"
}

variable "common_tags"{
    default = {
        project     = "expense"
        terraform   = "true"
        Enivronment = "dev"
    }
}

variable "mysql_sg_tags" {
    default = {
        component = "mysql"
    }
}
variable "backend_sg_tags" {
    default = {
        component = "backend"
    }
}
variable "frontend_sg_tags" {
    default = {
        component = "frontend"
    }
}
variable "bastion_sg_tags" {
    default = {
        component = "bastion"
    }
}
variable "ansible_sg_tags" {
    default = {
        component = "ansible"
    }
}
variable "app_alb_sg_tags" {
    default = {
        component = "app-alb"
    }
}
variable "web_alb_sg_tags" {
    default = {
        component = "web-alb"
    }
}




