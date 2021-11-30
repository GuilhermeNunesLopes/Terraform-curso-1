output "instance_public_ips" {
    value = aws_instance.servidor.*.public_ip
}

output "instance_names" {
    value = join(", ",aws_instance.servidor.*.tags.Name)
}