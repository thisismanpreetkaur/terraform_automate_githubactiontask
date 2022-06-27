# terraform {
#   backend "s3"{
#       bucket = "manpreet-s3-bucket"
#       key    =  "mk.tfstate"
#       dynamodb_table = "mk-table"
#       region = "us-east-1"
#   }
# }