output "bastion_sg_id" {
  value = aws_security_group.sg_bastion.id
}

output "lb_sg_id" {
  value = aws_security_group.lb_sg.id
}

