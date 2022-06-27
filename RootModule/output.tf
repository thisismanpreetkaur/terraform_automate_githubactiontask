output "security_groups_details" {
    value = ["${aws_security_group.mk_scgp.id}"]
  
}
output "security_group_arn" {
    value = ["${aws_security_group.mk_scgp.arn}"]
#   value = {for k,v in aws_security_group.mk_scgp: k=>[v.arn]}
}