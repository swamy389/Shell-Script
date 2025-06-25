variable "ami_id" {
   type = string 
   default = "ami-0b4f379183e5706b9" #this is the default value 
}

variable "instance_names" {
    type = list 
    default = ["MongoDB", "Cart", "Catalogue", "User" , "Redis", "MySQL", 
    "RabbitMQ", "Shipping", "Payment", "Web"]
}

variable "zone_id" {
    default = "Z05332472M52E21Z0P2PZ"
  
}


variable "domain" {
    default = "swamy.shop"
  
}
