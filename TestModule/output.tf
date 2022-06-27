output "id"{
    value = {for k,v in module.mk_default_vpc: k=>v}
}
output "arn" {
    value = {for k,v in module.mk_default_vpc: k=>v}  
}