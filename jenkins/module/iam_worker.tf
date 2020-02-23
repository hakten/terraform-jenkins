resource "aws_iam_role" "jenkins_worker" {
  name = "jenkins_worker"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_instance_profile" "jenkins_profile_worker" {
  name = "jenkins_profile_worker"
  role = "${aws_iam_role.jenkins_worker.name}"
}

resource "aws_iam_role_policy" "jenkins_policy_worker" {
  name = "jenkins_policy_worker"
  role = "${aws_iam_role.jenkins_worker.id}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}
