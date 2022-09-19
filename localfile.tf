resource "local_file" "my_file" {
  content = templatefile("details.tpl",
    {
      web01 = aws_instance.centos.0.public_ip
      web02 = aws_instance.centos.1.public_ip
      app01 = aws_instance.ubuntu.0.public_ip
      app02 = aws_instance.ubuntu.1.public_ip

    }
  )
  filename = "inventory"
}
