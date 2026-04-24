resource "aws_elastic_beanstalk_application" "elder_fraud_app" {
  name        = "elder-fraud-protection"
  description = "Elder Fraud Protection Flask Backend"
}

resource "aws_elastic_beanstalk_environment" "elder_fraud_env" {
  name                = "elder-fraud-environment"
  application         = aws_elastic_beanstalk_application.elder_fraud_app.name
  solution_stack_name = "64bit Amazon Linux 2023 v4.12.1 running Python 3.11"
  cname_prefix        = "ayon1113-elder-fraud"

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "EnvironmentType"
    value     = "SingleInstance"
  }
}