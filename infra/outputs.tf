output "eb_endpoint_url" {
    description = "CNAME endpoint to this elastic beanstalk environment"
    value = aws_elastic_beanstalk_environment.beanstalkappenv.cname
}