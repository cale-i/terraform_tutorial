variable "region" {
    default = "ap-northeast-1"
}

variable "cidrs" {
    type = list
    default = ["10.0.0.0/16", "10.1.0.0/16"]

}

variable "amis" {
    type = map
    default = {
        "ap-northeast-1" = "ami-0ce107ae7af2e92b5" # Amazon Linux 2 AMI
        "us-east-1"      = "ami-0947d2ba12ee1ff75" # Amazon Linux 2 AMI
    }
}