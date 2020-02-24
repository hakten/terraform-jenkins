resource "aws_route53_record" "jenkins_master" {
  zone_id = "${var.zone_id}"
  name    = "jenkins_master.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.jenkins_master.public_ip}"]
}

resource "aws_route53_record" "jenkins_worker1" {
  zone_id = "${var.zone_id}"
  name    = "jenkins_worker1.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.jenkins_worker1.public_ip}"]
}

resource "aws_route53_record" "jenkins_worker2" {
  zone_id = "${var.zone_id}"
  name    = "jenkins_worker2.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.jenkins_worker2.public_ip}"]
}

resource "aws_route53_record" "jenkins_worker3" {
  zone_id = "${var.zone_id}"
  name    = "jenkins_worker3.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.jenkins_worker3.public_ip}"]
}

resource "aws_route53_record" "dev"             {
  zone_id = "${var.zone_id}"
  name    = "dev.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.dev.public_ip}"]
}

resource "aws_route53_record" "qa"        {
  zone_id = "${var.zone_id}"
  name    = "qa.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.qa.public_ip}"]
}

resource "aws_route53_record" "stage" {
  zone_id = "${var.zone_id}"
  name    = "stage.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.stage.public_ip}"]
}

resource "aws_route53_record" "prod" {
  zone_id = "${var.zone_id}"
  name    = "prod.${var.domain}"
  type    = "A"
  ttl     = "60"
  records = ["${aws_instance.prod.public_ip}"]
}

