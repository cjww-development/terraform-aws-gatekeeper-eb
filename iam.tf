resource "aws_iam_instance_profile" "aws_eb_ec2_instance_profile" {
  role = aws_iam_role.aws_eb_ec2_role.name
  name = "GkEBInstanceProfile"
}

resource "aws_iam_role" "aws_eb_ec2_role" {
  name               = "GkEC2Role"
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions = [
      "sts:AssumeRole",
    ]

    principals {
      type = "Service"
      identifiers = [
        "ec2.amazonaws.com"
      ]
    }
  }
}
