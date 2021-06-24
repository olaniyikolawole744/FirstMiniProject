data "template_file" "toolserver1_bootstrap" {
  template = file("${path.module}/toolserver1_bootstrap.txt")
}


data "template_file" "toolserver2_bootstrap" {
  template = file("${path.module}/toolserver2_bootstrap.txt")
}


data "template_file" "monitoringserver_bootstrap" {
  template = file("${path.module}/monitoringserver_bootstrap.txt")
}

