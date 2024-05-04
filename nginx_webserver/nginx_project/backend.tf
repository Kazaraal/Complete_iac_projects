terraform {
  backend "s3" {
    bucket = "my-backend-s3-kk"
    key = "nginx_project.tfstate"
    region = "eu-west-2"
  }
}