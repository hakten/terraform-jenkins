output "jenkins_master" {
  value = "${module.jenkins_master.jenkins_master}"     
}
output "worker1" {
  value = "${module.jenkins_master.worker1}"
}
output "worker2" {
  value = "${module.jenkins_master.worker2}"
}
output "worker3" {
  value = "${module.jenkins_master.worker3}"
}
output "dev" {
  value = "${module.jenkins_master.dev}"
}
output "qa" {
  value = "${module.jenkins_master.qa}"
}
output "stage" {
  value = "${module.jenkins_master.stage}"
}
output "prod" {
  value = "${module.jenkins_master.prod}"
}

output "jenkins_passwd" {
  value = "6 lines above jenkins passwd look ^"
}

output "data_ami" {
  value = "${module.jenkins_master.data_ami}"
}

