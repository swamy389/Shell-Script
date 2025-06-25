variable "instance_name" {
    default = "Cart"
}

variable "ami_id" {
   type = string 
   default = "ami-0b4f379183e5706b9" #this is the default value 
}


variable "instance_type" {
    #type = string 
    default = "t2.micro"

}