output "jenkins_master" {
  value = " http://${aws_route53_record.jenkins_master.name}:8080"
}

output "worker1" {
  value = " http://${aws_route53_record.jenkins_worker1.name}:8080"
}

output "worker2" {
  value = " http://${aws_route53_record.jenkins_worker2.name}:8080"
}

output "worker3" {
  value = " http://${aws_route53_record.jenkins_worker3.name}:8080"
}


output "dev" {
  value = "http://${aws_route53_record.dev.name}"
}

output "qa" {
  value = "http://${aws_route53_record.qa.name}"
}

output "stage" {
  value = "http://${aws_route53_record.stage.name}"
}

output "prod" {
  value = " http://${aws_route53_record.prod.name}"
}

output "data_ami" {
  value = "${data.aws_ami.centos.id}"
}
